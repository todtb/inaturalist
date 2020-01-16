class AddUniqueIndexToAnnotations < ActiveRecord::Migration
  def up
    duplicate_term_values = ActiveRecord::Base.connection.execute( "
      SELECT resource_id, controlled_attribute_id, controlled_value_id
      FROM annotations
      GROUP BY resource_id, controlled_attribute_id, controlled_value_id
      HAVING count(*) > 1"
    );
    duplicate_term_values.each do |term_value|
      annotations = Annotation.where( term_value ).includes( :votes_for, :resource )
      # sort by # of votes, whether the annotator is the observer, then ID
      annotation_to_keep = annotations.sort_by do |a|
        is_observer = ( a.resource.user_id == a.user_id )
        [ a.votes_for.length * -1,
          is_observer ? 0 : 1,
          a.id ]
      end.first
      Annotation.where( term_value ).where( "id != ?", annotation_to_keep.id ).delete_all
    end
    # reindex all these observations in a delayed job
    Observation.elastic_index!( ids: duplicate_term_values.map{ |v| v["resource_id"] }, delay: true )

    add_index :annotations, [
      :resource_id,
      :resource_type,
      :controlled_attribute_id,
      :controlled_value_id
    ], name: "index_annotations_unique_on_resource_attribute_value", unique: true
  end


  def down
    remove_index :annotations, name: "index_annotations_unique_on_resource_attribute_value"
  end
end
