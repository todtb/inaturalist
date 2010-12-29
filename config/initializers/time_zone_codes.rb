class ActiveSupport::TimeZone
  # Mapping of common time zone codes to TimeZones, plus some time zones.  This
  # list is incomplete, as there is no official set of codes.  Mostly derived
  # from http://www.timeanddate.com/library/abbreviations/timezones/
  CODES = {
    'ADT' => ActiveSupport::TimeZone['Atlantic Time (Canada)'],
    'AKDT' => ActiveSupport::TimeZone['Alaska'],
    'ALMT' => ActiveSupport::TimeZone['Almaty'],
    'ART' => ActiveSupport::TimeZone['Buenos Aires'],
    'AST' => ActiveSupport::TimeZone['Atlantic Time (Canada)'],
    'AZOST' => ActiveSupport::TimeZone['Azores'],
    'AZOT' => ActiveSupport::TimeZone['Azores'],
    'BRST' => ActiveSupport::TimeZone['Brasilia'],
    'BRT' => ActiveSupport::TimeZone['Brasilia'],
    'CAT' => ActiveSupport::TimeZone['West Central Africa'],
    'CDT' => ActiveSupport::TimeZone['Central Time (US & Canada)'],
    'CET' => ActiveSupport::TimeZone['Paris'],
    'CST' => ActiveSupport::TimeZone['Central Time (US & Canada)'],
    'CVT' => ActiveSupport::TimeZone['Atlantic/Cape_Verde'],
    'EAT' => ActiveSupport::TimeZone['Nairobi'],
    'EDT' => ActiveSupport::TimeZone['Eastern Time (US & Canada)'],
    'EEST' => ActiveSupport::TimeZone['Athens'],
    'EET' => ActiveSupport::TimeZone['Athens'],
    'EGST' => ActiveSupport::TimeZone['Greenland'],
    'EGT' => ActiveSupport::TimeZone['Greenland'],
    'EST' => ActiveSupport::TimeZone['Eastern Time (US & Canada)'],
    'FJST' => ActiveSupport::TimeZone['Fiji'],
    'FJT' => ActiveSupport::TimeZone['Fiji'],
    'GMT' => ActiveSupport::TimeZone['UTC'],
    'GYT' => ActiveSupport::TimeZone['America/Guyana'],
    'HADT' => ActiveSupport::TimeZone['Hawaii'],
    'HAST' => ActiveSupport::TimeZone['Hawaii'],
    'HKT' => ActiveSupport::TimeZone['Hong Kong'],
    'ICT' => ActiveSupport::TimeZone['Bangkok'],
    'IDT' => ActiveSupport::TimeZone['Jerusalem'],
    'IRDT' => ActiveSupport::TimeZone['Tehran'],
    'IRKST' => ActiveSupport::TimeZone['Irkutsk'],
    'IRKT' => ActiveSupport::TimeZone['Irkutsk'],
    'IRST' => ActiveSupport::TimeZone['Tehran'],
    'IST' => ActiveSupport::TimeZone['Jerusalem'],
    'IST' => ActiveSupport::TimeZone['Mumbai'],
    'JST' => ActiveSupport::TimeZone['Tokyo'],
    'KRAST' => ActiveSupport::TimeZone['Krasnoyarsk'],
    'KRAT' => ActiveSupport::TimeZone['Krasnoyarsk'],
    'KST' => ActiveSupport::TimeZone['Seoul'],
    'MAGST' => ActiveSupport::TimeZone['Magadan'],
    'MAGT' => ActiveSupport::TimeZone['Magadan'],
    'MDT' => ActiveSupport::TimeZone['Mountain Time (US & Canada)'],
    'MHT' => ActiveSupport::TimeZone['Pacific/Majuro'],
    'MSD' => ActiveSupport::TimeZone['Moscow'],
    'MSK' => ActiveSupport::TimeZone['Moscow'],
    'MST' => ActiveSupport::TimeZone['Mountain Time (US & Canada)'],
    'MYT' => ActiveSupport::TimeZone['Kuala Lumpur'],
    'NCT' => ActiveSupport::TimeZone['New Caledonia'],
    'NDT' => ActiveSupport::TimeZone['Newfoundland'],
    'NOVST' => ActiveSupport::TimeZone['Novosibirsk'],
    'NOVT' => ActiveSupport::TimeZone['Novosibirsk'],
    'NPT' => ActiveSupport::TimeZone['Kathmandu'],
    'NST' => ActiveSupport::TimeZone['Newfoundland'],
    'NZDT' => ActiveSupport::TimeZone['Wellington'],
    'NZST' => ActiveSupport::TimeZone['Wellington'],
    'PDT' => ActiveSupport::TimeZone['Pacific Time (US & Canada)'],
    'PET' => ActiveSupport::TimeZone['Lima'],
    'PETST' => ActiveSupport::TimeZone['Kamchatka'],
    'PETT' => ActiveSupport::TimeZone['Kamchatka'],
    'PGT' => ActiveSupport::TimeZone['Pacific/Port_Moresby'],
    'PKT' => ActiveSupport::TimeZone['Karachi'],
    'PST' => ActiveSupport::TimeZone['Pacific Time (US & Canada)'],
    'SAST' => ActiveSupport::TimeZone['Africa/Johannesburg'],
    'SBT' => ActiveSupport::TimeZone['Asia/Magadan'],
    'SGT' => ActiveSupport::TimeZone['Singapore'],
    'SST' => ActiveSupport::TimeZone['Samoa'],
    'ULAT' => ActiveSupport::TimeZone['Ulaan Bataar'],
    'VLAST' => ActiveSupport::TimeZone['Vladivostok'],
    'VLAT' => ActiveSupport::TimeZone['Vladivostok'],
    'WAST' => ActiveSupport::TimeZone['West Central Africa'],
    'WAT' => ActiveSupport::TimeZone['West Central Africa'],
    'WDT' => ActiveSupport::TimeZone['Australia/Perth'],
    'WEST' => ActiveSupport::TimeZone['Europe/London'],
    'WET' => ActiveSupport::TimeZone['Europe/London'],
    'WGST' => ActiveSupport::TimeZone['Greenland'],
    'WGT' => ActiveSupport::TimeZone['Greenland'],
    'WIB' => ActiveSupport::TimeZone['Jakarta'],
    'WST' => ActiveSupport::TimeZone['Australia/Perth']
  }
end
