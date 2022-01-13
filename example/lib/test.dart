Map<String, dynamic> testMap = {
  "results": {
    "vat_rate": 1.2,
    "forms": [
      {
        "formName": "Arrival Form",
        "uuid": "ARRIVAL_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-form",
        "put_url": "\/api\/v1\/arrival-form\/%FORM_ID%",
        "fields": [
          {
            "name": "general_photos",
            "label": "General Photos",
            "errorText": "Choose some images",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "collapsible": false
          },
          {
            "name": "property_details",
            "label": "Property Details *",
            "errorText": "Please select the property type",
            "type": "select",
            "selection": [
              {"label": "Detached House", "value": 1},
              {"label": "Detached bungalow", "value": 2},
              {"label": "Semi-detached house", "value": 3},
              {"label": "Semi-detached bungalow", "value": 4},
              {"label": "End-terraced house", "value": 5},
              {"label": "Mid-terraced house", "value": 6},
              {"label": "Flat\/apartment", "value": 7},
              {"label": "Converted barn", "value": 8},
              {"label": "Office", "value": 9},
              {"label": "Shop", "value": 10},
              {"label": "Commercial unit", "value": 11},
              {"label": "Static caravan", "value": 12}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "wall_construction",
            "label": "Wall Construction *",
            "errorText": "Please select the wall construction",
            "type": "select",
            "selection": [
              {"label": "Brick", "value": 1},
              {"label": "Stone", "value": 2},
              {"label": "Block", "value": 3},
              {"label": "Rendered", "value": 4},
              {"label": "Steel cladding", "value": 5},
              {"label": "Concrete", "value": 6},
              {"label": "Timber frame", "value": 7}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "roof_construction",
            "label": "Roof Construction *",
            "errorText": "Please select the roof construction",
            "type": "select",
            "selection": [
              {"label": "Tile", "value": 1},
              {"label": "Slate", "value": 2},
              {"label": "Felt", "value": 3},
              {"label": "Fibre cement", "value": 4},
              {"label": "Steel", "value": 5},
              {"label": "Thatched", "value": 6},
              {"label": "Asphalt", "value": 7},
              {"label": "Single ply", "value": 8}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "has_flat_roof",
            "label": "Has Flat Roof? *",
            "errorText": "Please select if the property has a flat roof",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "flat_roof_coverage",
            "label": "% of roof covering that is flat roof? *",
            "errorText": "Please select the % of roof that is flat",
            "type": "select",
            "selection": [
              {"label": "Less than 25%", "value": 1},
              {"label": "25% - 50%", "value": 2},
              {"label": "50% - 75%", "value": 3},
              {"label": "75% - 100%", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "has_flat_roof",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "has_flat_roof",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "general_condition_of_property",
            "label": "General Property Condition *",
            "errorText": "Please select the property condition",
            "type": "select",
            "selection": [
              {"label": "Good state of repair", "value": 1},
              {"label": "Fair state of repair", "value": 2},
              {"label": "Poor state of repair", "value": 3}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "health_and_safety_issue",
            "label": "Health and Safety Issue? *",
            "errorText": "Please select if there are health and safety issues",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "health_and_safety_multi",
            "label": "Select All Issues *",
            "errorText": "Select any health and safety issues",
            "type": "multiselect",
            "selection": [
              {"label": "Poor lighting", "value": 1},
              {"label": "Fire\/entry & exit risks", "value": 2},
              {"label": "Falling debris", "value": 3},
              {"label": "Fragile surface", "value": 4},
              {"label": "Sharps\/needles\/broken glass", "value": 5},
              {"label": "Risk of electric shock", "value": 6},
              {"label": "Wet\/slippery floor surfaces", "value": 7},
              {"label": "Slips\/trips\/falls", "value": 8},
              {"label": "Pets (dogs etc.)", "value": 9},
              {"label": "Fumes\/dust\/steam\/smoke", "value": 10}
            ],
            "minimumSelection": 1,
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "health_and_safety_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "health_and_safety_issue",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "number_bedrooms",
            "label": "Number of Bedrooms",
            "type": "select",
            "selection": [
              {"label": "1", "value": 1},
              {"label": "2", "value": 2},
              {"label": "3", "value": 3},
              {"label": "4", "value": 4},
              {"label": "5", "value": 5},
              {"label": "6", "value": 6},
              {"label": "7", "value": 7},
              {"label": "8", "value": 8},
              {"label": "9", "value": 9},
              {"label": "10", "value": 10},
              {"label": "11", "value": 11},
              {"label": "12", "value": 12}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "year_property_built",
            "label": "Year Property Built (Circa)",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "length_of_time_at_property",
            "label": "Period of Ownership",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "length_of_time_at_property_units",
            "label": "Period of Ownership Units",
            "type": "radio",
            "selection": [
              {"label": "Years", "value": 1},
              {"label": "Months", "value": 2}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "business_type_correct",
            "label": "Business Type Correct?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "business_type_dictation_text",
            "label": "Business Type Dictation *",
            "errorText": "Please provide details of the business type",
            "info": "Provide details of the business type",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "attendance",
            "label": "Attendance",
            "type": "select",
            "selection": [
              {"label": "Met customer as agreed", "value": 1},
              {"label": "Met representative as agreed", "value": 8},
              {"label": "Permission to inspect", "value": 9}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "is_vulnerable",
            "label": "Is Potentially Vulnerable? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "isVulnerableLabel",
            "label": "Vulnerable Customer",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "wibble": "wibble",
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerabilities",
            "label": "Vulnerabilities",
            "errorText": "Select Any Relevant Vulnerabilities",
            "info": "Select any relevant vulnerabilities",
            "type": "multiselect",
            "selection": [
              {"label": "Physical disability", "value": 1},
              {"label": "Blind \/ Partially sighted", "value": 2},
              {"label": "Deaf \/ hearing difficulties", "value": 3},
              {"label": "Severe or long-term illness", "value": 4},
              {"label": "Mental health problems", "value": 5},
              {
                "label":
                    "Change in circumstances (e.g. job loss, bereavement, divorce)",
                "value": 6
              },
              {"label": "Caring responsibilities", "value": 7},
              {"label": "Lack of English language skills", "value": 8},
              {"label": "Other concern", "value": 9}
            ],
            "minimumSelection": 1,
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerability_dictation_text",
            "label": "Vulnerability Details *",
            "errorText": "Please provide vulnerability details",
            "info":
                "** DO NOT RECORD THIS VOICE FILE IN THE PRESENCE OF THE INSURED **",
            "type": "audio",
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "arrival_dictation_text",
            "label": "Arrival Details:",
            "errorText": "Please provide details at arrival",
            "info": "Provide details at arrival",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Arrival Form (Storm)",
        "uuid": "ARRIVAL_FORM_STORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-form",
        "put_url": "\/api\/v1\/arrival-form\/%FORM_ID%",
        "fields": [
          {
            "name": "general_photos",
            "label": "General Photos",
            "errorText": "Choose some images",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "collapsible": false
          },
          {
            "name": "general_condition_of_property",
            "label": "General Property Condition *",
            "errorText": "Please select the property condition",
            "type": "select",
            "selection": [
              {"label": "Good state of repair", "value": 1},
              {"label": "Fair state of repair", "value": 2},
              {"label": "Poor state of repair", "value": 3}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "length_of_time_at_property",
            "label": "Period of Ownership",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "length_of_time_at_property_units",
            "label": "Units",
            "type": "radio",
            "selection": [
              {"label": "Years", "value": "Years"},
              {"label": "Months", "value": "Months"}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "business_type_correct",
            "label": "Business Type Correct?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "business_type_dictation_text",
            "label": "Business Type Dictation *",
            "errorText": "Please provide details of the business type",
            "info": "Provide details of the business type",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "attendance",
            "label": "Attendance",
            "type": "select",
            "selection": [
              {"label": "Met customer as agreed", "value": 1},
              {"label": "Met representative as agreed", "value": 8},
              {"label": "Permission to inspect", "value": 9}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "is_vulnerable",
            "label": "Is Potentially Vulnerable? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "isVulnerableLabel",
            "label": "Vulnerable Customer",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerabilities",
            "label": "Vulnerabilities",
            "errorText": "Select Any Relevant Vulnerabilities",
            "info": "Select any relevant vulnerabilities",
            "type": "multiselect",
            "selection": [
              {"label": "Physical disability", "value": 1},
              {"label": "Blind \/ Partially sighted", "value": 2},
              {"label": "Deaf \/ hearing difficulties", "value": 3},
              {"label": "Severe or long-term illness", "value": 4},
              {"label": "Mental health problems", "value": 5},
              {
                "label":
                    "Change in circumstances (e.g. job loss, bereavement, divorce)",
                "value": 6
              },
              {"label": "Caring responsibilities", "value": 7},
              {"label": "Lack of English language skills", "value": 8},
              {"label": "Other concern", "value": 9}
            ],
            "minimumSelection": 1,
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerability_dictation_text",
            "label": "Vulnerability Details *",
            "errorText": "Please provide vulnerability details",
            "info":
                "** DO NOT RECORD THIS VOICE FILE IN THE PRESENCE OF THE INSURED **",
            "type": "text",
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "arrival_dictation_text",
            "label": "Arrival Details:",
            "errorText": "Please provide details at arrival",
            "info": "Provide details at arrival",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Arrival Reinspection Form",
        "uuid": "ARRIVAL_REINSPECTION_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-reinspection-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/arrival-reinspection-form",
        "put_url": "\/api\/v1\/arrival-reinspection-form\/%FORM_ID%",
        "fields": [
          {
            "name": "general_photos",
            "label": "General Photos",
            "errorText": "Choose some images",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "collapsible": false
          },
          {
            "name": "attendance",
            "label": "Attendance *",
            "type": "select",
            "selection": [
              {
                "label":
                    "Customer \/ representative did not attend - unable to contact",
                "value": 2
              },
              {
                "label":
                    "Customer \/ representative did not attend - to be rearranged",
                "value": 3
              },
              {
                "label": "Customer \/ representative late for appointment",
                "value": 4
              },
              {
                "label":
                    "Permission given to inspect without customer in attendance",
                "value": 9
              },
              {"label": "Surveyor late - traffic", "value": 5},
              {"label": "Surveyor late - weather", "value": 6},
              {
                "label": "Surveyor late - previous appointment overran",
                "value": 7
              }
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "health_and_safety_issue",
            "label": "Health and Safety Issue? *",
            "errorText": "Please select if there are health and safety issues",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "health_and_safety_multi",
            "label": "Issues identified *",
            "errorText": "Select any health and safety issues",
            "type": "multiselect",
            "selection": [
              {"label": "Fire\/entry & exit risks", "value": 1},
              {"label": "Falling debris", "value": 2},
              {"label": "Fragile surface", "value": 3},
              {"label": "Sharps\/needles\/broken glass", "value": 4},
              {"label": "Risk of electric shock", "value": 5},
              {"label": "Wet\/slippery floor surfaces", "value": 6},
              {"label": "Slips\/trips\/falls", "value": 7},
              {"label": "Pets (dogs etc.)", "value": 8},
              {"label": "Fumes\/dust\/steam\/smoke", "value": 9},
              {"label": "Poor lighting", "value": 10}
            ],
            "minimumSelection": 1,
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "health_and_safety_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "health_and_safety_issue",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "dictationFilesLabel",
            "label": "Dictation Files",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "arrival_dictation_text",
            "label": "Dictation Text",
            "errorText": "Please provide details at arrival",
            "info": "Provide details at arrival",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Claim Summary",
        "uuid": "CLAIM_SUMMARY_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/claim-summary",
        "fields": [
          {
            "name": "insurerDetailsLabel",
            "label": "Insurer Details",
            "type": "label"
          },
          {
            "name": "bvs_ref_num",
            "label": "BVS Ref",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insurer_details.insurer_name",
            "label": "Insurer",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insurer_details.insurer_tel1",
            "label": "Insurer Telephone",
            "type": "number",
            "readonly": true
          },
          {
            "name": "handler_name",
            "label": "Claim Handler",
            "type": "text",
            "readonly": true
          },
          {
            "name": "claim_number",
            "label": "Claim Number",
            "type": "text",
            "readonly": true
          },
          {
            "name": "policy_number",
            "label": "Policy Number",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insuredDetailsLabel",
            "label": "Insured Details",
            "type": "label"
          },
          {
            "name": "insured_details.insured_type",
            "label": "Type",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_title_id",
            "label": "Title",
            "type": "select",
            "readonly": true,
            "selection": [
              {"label": "Mr", "value": 99},
              {"label": "Mrs", "value": 3},
              {"label": "Miss", "value": 2},
              {"label": "Ms", "value": 4},
              {"label": "Sir", "value": 31},
              {"label": "Dr", "value": 98},
              {"label": "Lady", "value": 275}
            ]
          },
          {
            "name": "insured_details.insured_first_name",
            "label": "First Name",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_last_name",
            "label": "Last Name",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_title_id2",
            "label": "Joint Policyholder",
            "type": "select",
            "readonly": true,
            "selection": [
              {"label": "Mr", "value": 99},
              {"label": "Mrs", "value": 3},
              {"label": "Miss", "value": 2},
              {"label": "Ms", "value": 4},
              {"label": "Sir", "value": 31},
              {"label": "Dr", "value": 98},
              {"label": "Lady", "value": 275}
            ]
          },
          {
            "name": "insured_details.insured_first_name2",
            "label": "Joint Policyholder",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_last_name2",
            "label": "Joint Policyholder",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_tel1",
            "label": "Tel (home)",
            "type": "number",
            "readonly": true
          },
          {
            "name": "insured_details.insured_tel2",
            "label": "Tel (work)",
            "type": "number",
            "readonly": true
          },
          {
            "name": "insured_details.insured_tel3",
            "label": "Tel (mobile)",
            "type": "number",
            "readonly": true
          },
          {
            "name": "insured_details.insured_email",
            "label": "Email 1",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_email2",
            "label": "Email 2",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address1",
            "label": "Risk\/Damage Address Line 1",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address2",
            "label": "Risk\/Damage Address Line 2",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address3",
            "label": "Risk\/Damage Address Line 3",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address_town",
            "label": "Risk\/Damage Address Town",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address_city",
            "label": "Risk\/Damage Address City",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address_county",
            "label": "Risk\/Damage Address County",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address_postcode",
            "label": "Risk\/Damage Address Postcode",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.what_3_words",
            "label": "What 3 Words",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address1",
            "label": "Contact Address Line 1",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address2",
            "label": "Contact Address Line 2",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address3",
            "label": "Contact Address Line 3",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address_town",
            "label": "Contact Address Town",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address_city",
            "label": "Contact Address City",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_contact_address_county",
            "label": "Contact Address County",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_risk_address_postcode",
            "label": "Contact Address Postcode",
            "type": "text",
            "readonly": true
          },
          {
            "name": "insured_details.insured_vat_status_id",
            "label": "VAT Status",
            "type": "select",
            "readonly": true,
            "selection": [
              {"label": "Yes", "value": 100},
              {"label": "No", "value": 101},
              {"label": "Partial", "value": 102},
              {"label": "Unknown", "value": 103}
            ]
          },
          {
            "name": "policyCoverDetailsLabel",
            "label": "Policy Cover Details",
            "type": "label"
          },
          {
            "name": "policy_type_id",
            "label": "Policy Type",
            "type": "number",
            "readonly": true
          },
          {
            "name": "date_inception",
            "label": "Inception Date",
            "type": "text",
            "readonly": true
          },
          {
            "name": "property_type",
            "label": "Property Type",
            "type": "text",
            "readonly": true
          },
          {
            "name": "property_no_beds",
            "label": "Number Beds",
            "type": "number",
            "readonly": true
          },
          {
            "name": "property_wall_type",
            "label": "Wall Type",
            "type": "text",
            "readonly": true
          },
          {
            "name": "property_roof_type",
            "label": "Roof Type",
            "type": "text",
            "readonly": true
          },
          {
            "name": "property_flat_roof_perc",
            "label": "Has Flat Roof?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": true
          },
          {
            "name": "contents_enabled",
            "label": "Contents Cover",
            "type": "number",
            "readonly": true
          },
          {
            "name": "claimDetailsLabel",
            "label": "Claim Details",
            "type": "label"
          },
          {
            "name": "delegated_authority",
            "label": "Delegated Authority",
            "type": "number",
            "readonly": true
          },
          {
            "name": "estimates_received",
            "label": "Estimates Received",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": true
          },
          {
            "name": "repairs_completed",
            "label": "Repairs Completed",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": true
          },
          {
            "name": "emergency_claim",
            "label": "Emergency Claim",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": true
          },
          {
            "name": "peril_id",
            "label": "Type of Peril",
            "type": "select",
            "readonly": true,
            "selection": [
              {"label": "Liability", "value": 124},
              {"label": "Unknown", "value": 131},
              {"label": "Accidental damage", "value": 113},
              {
                "label": "Accidental damage to glass and sanitary",
                "value": 114
              },
              {"label": "Accidental damage to services", "value": 115},
              {"label": "Earthquake", "value": 116},
              {"label": "Escape of water", "value": 117},
              {"label": "Explosion", "value": 118},
              {"label": "Falling trees and branches", "value": 119},
              {"label": "Fire", "value": 120},
              {"label": "Flood", "value": 121},
              {"label": "Freeze", "value": 122},
              {"label": "Impact", "value": 123},
              {"label": "Lightening", "value": 125},
              {"label": "Malicious damage\/Vandalism", "value": 126},
              {"label": "Smoke", "value": 127},
              {"label": "Storm - Wind", "value": 128},
              {"label": "Theft\/Attempted theft", "value": 130},
              {"label": "Subsidence", "value": 582},
              {"label": "Storm - Weight of snow", "value": 607},
              {"label": "Storm - Rain", "value": 630},
              {"label": "Escape of oil", "value": 749}
            ]
          },
          {
            "name": "date_of_loss",
            "label": "Date of Loss",
            "type": "text",
            "readonly": true
          },
          {
            "name": "date_insurer_notified",
            "label": "Insurer Notified",
            "type": "text",
            "readonly": true
          },
          {
            "name": "rooms_damaged",
            "label": "No. Rooms Damaged",
            "type": "number",
            "readonly": true
          },
          {
            "name": "number_contents",
            "label": "No. Content Items",
            "type": "number",
            "readonly": true
          },
          {
            "name": "claim_details",
            "label": "Claim Details",
            "type": "textarea",
            "readonly": true
          },
          {
            "name": "special_instructions",
            "label": "Special Instructions",
            "type": "textarea",
            "readonly": true
          },
          {"name": "surveyorLabel", "label": "Surveyor", "type": "label"},
          {
            "name": "surveyor_id",
            "label": "Assigned Surveyor",
            "type": "number",
            "readonly": true
          },
          {
            "name": "case_manager_id",
            "label": "Assigned Case Manager",
            "type": "number",
            "readonly": true
          },
          {"name": "KeyDatesLabel", "label": "Key Dates", "type": "label"},
          {
            "name": "date_first_edit",
            "label": "Date First Edit",
            "type": "text",
            "readonly": true
          },
          {
            "name": "date_received",
            "label": "Date Received",
            "type": "text",
            "readonly": true
          },
          {
            "name": "telephone_contact",
            "label": "Telephone Contact",
            "type": "number",
            "readonly": true
          },
          {
            "name": "date_first_tel_contact",
            "label": "Attempted 1st Telephone Contact",
            "type": "select",
            "readonly": true,
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "Yes - Voice message left", "value": 2},
              {"label": "Yes - Message left with family member", "value": 3},
              {"label": "Yes - Message left with work colleague", "value": 4},
              {"label": "No - Insured not available", "value": 5},
              {"label": "No - No voice message facility", "value": 6},
              {"label": "No - No phone number provided", "value": 7},
              {"label": "No - Phone number incorrect", "value": 8}
            ]
          },
          {
            "name": "date_inspection_offered",
            "label": "Verbal Offer of Appointment",
            "type": "text",
            "readonly": true
          },
          {
            "name": "date_first_appoint_offered",
            "label": "Surveyor 1st Appointment Offered",
            "type": "text",
            "readonly": true
          },
          {
            "name": "date_surveyor_appoint_agreed",
            "label": "Surveyor Appointment Agreed",
            "type": "text",
            "readonly": true
          }
        ]
      },
      {
        "formName": "External Damage Form",
        "uuid": "EXTERNAL_DAMAGE_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/external-damage-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/external-damage-form",
        "put_url": "\/api\/v1\/external-damage-form\/%form_id%",
        "fields": [
          {
            "name": "primary_location_of_damage",
            "label": "Damage Location *",
            "type": "select",
            "selection": [
              {"label": "Balcony", "value": 1},
              {"label": "Brickwork\/stonework", "value": 2},
              {"label": "Chimney", "value": 3},
              {"label": "Conservatory", "value": 4},
              {"label": "Damp course", "value": 5},
              {"label": "Door", "value": 6},
              {"label": "Door frame", "value": 7},
              {"label": "Driveway", "value": 8},
              {"label": "Fascia", "value": 9},
              {"label": "Fence", "value": 10},
              {"label": "Flat roof", "value": 11},
              {"label": "Garage", "value": 12},
              {"label": "Garden\/boundary wall", "value": 13},
              {"label": "Gate", "value": 14},
              {"label": "Guttering", "value": 15},
              {"label": "Main roof", "value": 16},
              {"label": "Path", "value": 17},
              {"label": "Patio", "value": 18},
              {"label": "Render", "value": 19},
              {"label": "Shed\/Summerhouse", "value": 20},
              {"label": "Window", "value": 21},
              {"label": "Window frame", "value": 22},
              {"label": "Other", "value": 23}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the damage location",
            "info": "The location of the damage"
          },
          {
            "name": "primary_location_of_damage_other",
            "label": "Other Location *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter the damage location",
            "info": "The location of the damage if not in the list",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 23
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 23
              }
            ]
          },
          {
            "name": "pole_cam_photos",
            "label": "Polecam Photos? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No - Property too high", "value": 2},
              {"label": "No - Equipment malfunction", "value": 3},
              {"label": "No - Low level roof (ladders)", "value": 4},
              {"label": "No - Eaves\/Roof level Access", "value": 5},
              {"label": "No - Vantage Point Used (High Roof)", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select if there are polecam photos",
            "info": "Are polecam photos provided?"
          },
          {
            "name": "shared_ownership",
            "label": "Is The Damaged Area Owned Solely By The Insured? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "To be confirmed", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select if the insured is the sole owner of the damaged area",
            "info": "Is the insured the sole owner of the area damaged?"
          },
          {
            "name": "shared_ownership_parties",
            "label":
                "How Many Other Parties Share Ownership Of The Damaged Area? *",
            "type": "select",
            "selection": [
              {"label": "0", "value": 0},
              {"label": "1", "value": 1},
              {"label": "2", "value": 2},
              {"label": "3", "value": 3},
              {"label": "4", "value": 4},
              {"label": "5", "value": 5},
              {"label": "6", "value": 6},
              {"label": "7", "value": 7},
              {"label": "8", "value": 8},
              {"label": "9", "value": 9},
              {"label": "10", "value": 10}
            ],
            "readonly": false,
            "errorText": "Please select how many other parties are involved",
            "info":
                "The number of other parties involved in the ownership of the damages area",
            "rules": [
              {
                "field": "shared_ownership",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "shared_ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "damagedAreaLabel",
            "label": "Damaged Area Dimensions (m)",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "damage_width",
            "label": "Width (m)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the width of the damaged area",
            "info": "The width of the damaged area in metres"
          },
          {
            "name": "damage_length",
            "label": "Length (m)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the length of the damaged area",
            "info": "The length of the damaged area in metres"
          },
          {
            "name": "damage_area",
            "label": "Area (m2)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the area of the damaged area",
            "info": "The area of the damaged area in sq. metres"
          },
          {
            "name": "360_photos",
            "label": "360 degree photos",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please upload any 360 degree photos ",
            "info": "Are there any 360 degree photos?"
          },
          {
            "name": "overview_photos",
            "label": "Overview photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any overview photos ",
            "info": "Are there any overview photos?"
          },
          {
            "name": "general_photos",
            "label": "General photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any general photos ",
            "info": "Are there any general photos?"
          },
          {
            "name": "cause_of_damage",
            "label": "Insured Cause? *",
            "type": "select",
            "selection": [
              {"label": "Accidental damage (AD)", "value": 1},
              {"label": "AD to glass and sanitary", "value": 2},
              {"label": "AD to services", "value": 3},
              {"label": "Earthquake", "value": 4},
              {"label": "Escape of water", "value": 5},
              {"label": "Explosion", "value": 6},
              {"label": "Falling trees and branches", "value": 7},
              {"label": "Fire", "value": 8},
              {"label": "Flood", "value": 9},
              {"label": "Freeze", "value": 10},
              {"label": "Impact", "value": 11},
              {"label": "Liability", "value": 12},
              {"label": "Lightning", "value": 13},
              {"label": "Malicious Damage\/Vandalism", "value": 14},
              {"label": "No insured cause", "value": 15},
              {"label": "Smoke", "value": 16},
              {"label": "Storm", "value": 17},
              {"label": "Theft\/Attempted Theft", "value": 18},
              {"label": "Subsidence", "value": 19}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the cause of damage",
            "info": "The cause of the damage"
          },
          {
            "name": "gradually_operating_cause_type",
            "label": "No Insured Cause Type *",
            "type": "select",
            "selection": [
              {"label": "Decayed timber", "value": 1},
              {"label": "Deteriorated mortar works", "value": 2},
              {"label": "Fatigue crack to lead work", "value": 3},
              {"label": "Freeze\/thaw action", "value": 4},
              {"label": "Nail corrosion", "value": 5},
              {"label": "Natural breakdown of materials", "value": 6},
              {"label": "Poor design\/workmanship", "value": 7},
              {"label": "Unknown defect", "value": 8},
              {"label": "Rainwater ingress over a period of time", "value": 9},
              {"label": "No damage", "value": 10},
              {"label": "Rising\/Penetrating damp", "value": 11}
            ],
            "readonly": false,
            "errorText": "Please select the cause of damage if not covered",
            "info": "The cause of the damage if not covered by insurance",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "policy_exclusion",
            "label": "Policy Exclusion? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 1},
              {"label": "A\/D: Cleaning\/repair\/restoration", "value": 2},
              {"label": "A\/D: Pets\/insects\/vermin", "value": 3},
              {"label": "A\/D: Rainwater ingress", "value": 4},
              {"label": "A\/D: Unoccupancy", "value": 5},
              {"label": "A\/D Glass & Sanitary - Unoccupancy", "value": 6},
              {"label": "A\/D Services - Unoccupancy", "value": 7},
              {"label": "EOW: Failed sealant \/ grout", "value": 8},
              {"label": "EOW: Failure to mitigate", "value": 9},
              {"label": "EOW: Overflowing apparatus", "value": 10},
              {"label": "EOW: Unoccupancy", "value": 11},
              {"label": "EOW: Decayed timber\/rot", "value": 21},
              {
                "label": "Impact: Felling, lopping of trees \/ branches",
                "value": 12
              },
              {"label": "Impact: Fences, hedges & gates", "value": 13},
              {"label": "Impact: Damage by pets", "value": 14},
              {"label": "Vandalism: Persons lawfully on property", "value": 15},
              {"label": "Vandalism: Unoccupancy", "value": 16},
              {"label": "Storm: Fences, hedges & gates", "value": 17},
              {"label": "Storm: Rise in water table", "value": 18},
              {"label": "Theft: Persons lawfully on property", "value": 19},
              {"label": "Theft: Unoccupancy", "value": 20}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the reason for policy exclusion",
            "info": "The reason the damage is excluded from the policy"
          },
          {
            "name": "damage_pre_inception",
            "label": "Damage Pre-inception? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Possible", "value": 3},
              {"label": "N\/A - TPPD Claim", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the damage was caused pre-inception",
            "info": "Was the damage was caused pre-inception?"
          },
          {
            "name": "policy_cover",
            "label": "Policy Cover *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Partial", "value": 3},
              {"label": "To be confirmed", "value": 4},
              {"label": "N\/A - TPPD Claim", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select if the damaged is covered by the policy",
            "info": "Is the damaged covered by the policy?"
          },
          {
            "name": "roof_estimate_type",
            "label": "Roof Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select type of roof estimate",
            "info": "If an estimate was given, who gave it"
          },
          {
            "name": "roof_estimate",
            "label": "Claimed Amount *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please enter the amount claimed for the roof estimate",
            "info": "The amount claimed for the roof estimate"
          },
          {
            "name": "roof_estimate_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the amount of VAT on the roof estimate",
            "info": "The amount of VAT on the roof estimate"
          },
          {
            "name": "external_estimate_type",
            "label": "External Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select type of external estimate",
            "info": "If an external estimate was given, who gave it"
          },
          {
            "name": "external_estimate",
            "label": "Claimed Amount *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please enter the amount claimed for the external estimate",
            "info": "The amount claimed for the external estimate"
          },
          {
            "name": "external_estimate_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the external estimate",
            "info": "The amount of VAT on the external estimate"
          },
          {
            "name": "span_year_built",
            "label": "Built ~",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "potential_acm",
            "label": "Potential ACM? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "R&D Survey", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether there is any ACM present",
            "info": "Is there any ACM present?"
          },
          {
            "name": "potential_acm_details_multi",
            "label": "Materials Affected *",
            "type": "multiselect",
            "selection": [
              {"label": "Roof sheets", "value": 1},
              {"label": "Guttering\/drainpipe", "value": 2},
              {"label": "Wall cladding", "value": 3},
              {"label": "Soffit boards", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the types of ACM present",
            "info": "The types of ACM present",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "potential_acm_sample_taken",
            "label": "ACM Kit Used? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 2},
              {"label": "Yes - 1 kit", "value": 1},
              {"label": "Yes - 2 kits", "value": 3},
              {"label": "Yes - 3 kits", "value": 4},
              {"label": "Yes - 4 kits", "value": 5},
              {"label": "Yes - 5 kits", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the number of ACM sample kits used",
            "info": "If ACM sample kits were used, the number of kits",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "acm_photo",
            "label": "ACM Photograph(s) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ACM photos to upload",
            "info": "Photos of any ACM"
          },
          {
            "name": "audio_arrival_damage_text",
            "label": "ACM Dictation *",
            "errorText": "Please record details of any ACM",
            "info": "Audio details of any ACM",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "scope_contents",
            "label": "Scope Contents",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "audio_external_damage_text",
            "label": "Description Of External Damage *",
            "errorText": "Please provide details of the external damage",
            "info": "Audio details of the external damage",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "External Damage Reinspection Form",
        "uuid": "EXTERNAL_DAMAGE_REINSPECTION_FORM_100",
        "version": "1.0.0",
        "get_url":
            "\/api\/v1\/claims\/%CLAIM_ID%\/external-damage-reinspection-form",
        "post_url":
            "\/api\/v1\/claims\/%CLAIM_ID%\/external-damage-reinspection-form",
        "put_url": "\/api\/v1\/external-damage-reinspection-form\/%form_id%",
        "fields": [
          {
            "name": "primary_location_of_damage",
            "label": "Damage Location",
            "type": "select",
            "selection": [
              {"label": "Balcony", "value": 1},
              {"label": "Brickwork\/stonework", "value": 2},
              {"label": "Chimney", "value": 3},
              {"label": "Conservatory", "value": 4},
              {"label": "Damp course", "value": 5},
              {"label": "Door", "value": 6},
              {"label": "Door frame", "value": 7},
              {"label": "Driveway", "value": 8},
              {"label": "Fascia", "value": 9},
              {"label": "Fence", "value": 10},
              {"label": "Flat roof", "value": 11},
              {"label": "Garage", "value": 12},
              {"label": "Garden\/boundary wall", "value": 13},
              {"label": "Gate", "value": 14},
              {"label": "Guttering", "value": 15},
              {"label": "Main roof", "value": 16},
              {"label": "Path", "value": 17},
              {"label": "Patio", "value": 18},
              {"label": "Render", "value": 19},
              {"label": "Shed\/Summerhouse", "value": 20},
              {"label": "Window", "value": 21},
              {"label": "Window frame", "value": 22},
              {"label": "Other", "value": 23}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the damage location",
            "info": "The location of the damage"
          },
          {
            "name": "primary_location_of_damage_other",
            "label": "Other Location",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter the damage location",
            "info": "The location of the damage if not in the list",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 23
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 23
              }
            ]
          },
          {
            "name": "pole_cam_photos",
            "label": "Polecam Photos?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No - Property too high", "value": 2},
              {"label": "No - Equipment malfunction", "value": 3},
              {"label": "No - Low level roof (ladders)", "value": 4},
              {"label": "No - Eaves\/Roof level Access", "value": 5},
              {"label": "No - Vantage Point Used (High Roof)", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select if there are polecam photos",
            "info": "Are polecam photos provided?",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 16
              }
            ]
          },
          {
            "name": "damagedAreaLabel",
            "label": "Damaged Area Dimensions (m)",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 13
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 17
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 18
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 20
              }
            ]
          },
          {
            "name": "damage_width",
            "label": "Width (m)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the width of the damaged area",
            "info": "The width of the damaged area in metres",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 13
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 17
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 18
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 20
              }
            ]
          },
          {
            "name": "damage_length",
            "label": "Length (m)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the length of the damaged area",
            "info": "The length of the damaged area in metres",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 13
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 17
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 18
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 20
              }
            ]
          },
          {
            "name": "damage_area",
            "label": "Area (m2)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the area of the damaged area",
            "info": "The area of the damaged area in sq. metres",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 13
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 17
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 18
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 20
              }
            ]
          },
          {
            "name": "potential_acm",
            "label": "Potential ACM?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "R&D Survey", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether there is any ACM present",
            "info": "Is there any ACM present?"
          },
          {
            "name": "potential_acm_details_multi",
            "label": "Materials Affected",
            "type": "multiselect",
            "selection": [
              {"label": "Roof sheets", "value": 1},
              {"label": "Guttering\/drainpipe", "value": 2},
              {"label": "Wall cladding", "value": 3},
              {"label": "Soffit boards", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the types of ACM present",
            "info": "The types of ACM present"
          },
          {
            "name": "potential_acm_sample_taken",
            "label": "ACM Kit Used?",
            "type": "select",
            "selection": [
              {"label": "No", "value": 2},
              {"label": "Yes - 1 kit", "value": 1},
              {"label": "Yes - 2 kits", "value": 3},
              {"label": "Yes - 3 kits", "value": 4},
              {"label": "Yes - 4 kits", "value": 5},
              {"label": "Yes - 5 kits", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the number of ACM sample kits used",
            "info": "If ACM sample kits were used, the number of kits"
          },
          {
            "name": "acm_photo",
            "label": "ACM Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ACM photos to upload",
            "info": "Photos of any ACM"
          },
          {
            "name": "audio_damage_text",
            "label": "ACM Dictation",
            "errorText": "Please record details of any ACM",
            "info": "Audio details of any ACM",
            "type": "image",
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "360_photo",
            "label": "360 Degree Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the 360 degree photos to upload",
            "info": "Any 360 degree Photos"
          },
          {
            "name": "overview_photos",
            "label": "Overview Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ovberview photos to upload",
            "info": "Any overview Photos"
          },
          {
            "name": "general_photos",
            "label": "General Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the general photos to upload",
            "info": "Any general Photos"
          }
        ]
      },
      {
        "formName": "Feedback Form",
        "uuid": "FEEDBACK_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/feedback-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/feedback-form",
        "fields": [
          {
            "name": "convenientappointment",
            "label": "Did we provide you with a convenient date \/ time slot?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "surveyorpunctual",
            "label": "Did the surveyor attend the appointment on time?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "clearexplanationofoutcome",
            "label":
                "Did the surveyor clearly explain the outcome of the inspection?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "fullexplanationofrepairlevels",
            "label":
                "Did the surveyor fully explain the level of insured repairs?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "clearexplanationofnextsteps",
            "label":
                "Did the surveyor provide a clear explanation of what will happen next?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "surveyorhelpful",
            "label": "Did you find the surveyor helpful?",
            "errorText": "Please select a response",
            "info":
                "Please choose the option which best describes your feeling",
            "type": "select",
            "selection": [
              {
                "label": "Happy",
                "icon": "smile",
                "colour": "green",
                "value": 3
              },
              {
                "label": "Neutral",
                "icon": "meh",
                "colour": "orange",
                "value": 2
              },
              {"label": "Unhappy", "icon": "frown", "colour": "red", "value": 1}
            ],
            "readonly": false,
            "requiredField": true,
            "collapsible": false
          },
          {
            "name": "recommend2friend",
            "label":
                "Following your recent claim, on a scale of 0 (unlikely) to 10 (very likely), would you recommend the supplier Building Validation Solutions to your friends and relatives?",
            "errorText": "Please select a response",
            "type": "select",
            "selection": [
              {"label": "10 (very likely)", "value": 10},
              {"label": "9", "value": 9},
              {"label": "8", "value": 8},
              {"label": "7", "value": 7},
              {"label": "6", "value": 6},
              {"label": "5", "value": 5},
              {"label": "4", "value": 4},
              {"label": "3", "value": 3},
              {"label": "2", "value": 2},
              {"label": "1", "value": 1},
              {"label": "0 (unlikely)", "value": 0}
            ],
            "readonly": false,
            "requiredField": true
          }
        ]
      },
      {
        "formName": "Historic Property Information",
        "uuid": "HISTORIC_PROPERTY_INFO_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/historic-property-info",
        "fields": [
          {
            "name": "insured_name",
            "label": "Name",
            "type": "number",
            "readonly": true
          },
          {
            "name": "address",
            "label": "Address",
            "type": "text",
            "readonly": true
          },
          {
            "name": "source",
            "label": "Source",
            "type": "text",
            "readonly": true
          },
          {
            "name": "href",
            "label": "Rightmove",
            "type": "text",
            "readonly": true,
            "rules": [
              {
                "field": "source",
                "type": "visibility",
                "validity": "eq",
                "value": "RIGHTMOVE"
              }
            ]
          },
          {
            "name": "href",
            "label": "Zoopla",
            "type": "text",
            "readonly": true,
            "rules": [
              {
                "field": "source",
                "type": "visibility",
                "validity": "eq",
                "value": "ZOOPLA"
              }
            ]
          },
          {
            "name": "sold",
            "label": "Last Sold",
            "type": "text",
            "readonly": true
          },
          {"name": "type", "label": "Type", "type": "text", "readonly": true},
          {
            "name": "price",
            "label": "Sold Price",
            "type": "number",
            "readonly": true
          },
          {
            "name": "description",
            "label": "Description",
            "type": "text",
            "readonly": true
          },
          {
            "name": "floorplans_unserialized",
            "label": "Floorplan",
            "type": "text",
            "readonly": true
          },
          {
            "name": "photos_unserialized",
            "label": "Photos",
            "type": "text",
            "readonly": true
          }
        ]
      },
      {
        "formName": "Internal Damage Form",
        "uuid": "INTERNAL_DAMAGE_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-form",
        "put_url": "\/api\/v1\/internal-damage-form\/%FORM_ID%",
        "fields": [
          {
            "name": "room_id",
            "label": "Name of Room *",
            "type": "select",
            "selection": [
              {"label": "Bathroom", "value": 199},
              {"label": "Bedroom 1", "value": 193},
              {"label": "Bedroom 2", "value": 194},
              {"label": "Bedroom 3", "value": 195},
              {"label": "Bedroom 4", "value": 196},
              {"label": "Bedroom 5", "value": 197},
              {"label": "Bedroom 6", "value": 198},
              {"label": "Conservatory", "value": 200},
              {"label": "Communal area", "value": 201},
              {"label": "Downstairs WC", "value": 204},
              {"label": "Dining kitchen", "value": 202},
              {"label": "Dining room", "value": 203},
              {"label": "En-suite bathroom", "value": 205},
              {"label": "Family room", "value": 206},
              {"label": "Games room", "value": 207},
              {"label": "Garage", "value": 208},
              {"label": "Hall", "value": 209},
              {"label": "Hall, stairs and landing", "value": 210},
              {"label": "Kitchen", "value": 211},
              {"label": "Landing", "value": 212},
              {"label": "Loft", "value": 213},
              {"label": "Lounge", "value": 214},
              {"label": "Office", "value": 215},
              {"label": "Play room", "value": 216},
              {"label": "Reception", "value": 258},
              {"label": "Shop", "value": 260},
              {"label": "Stairs", "value": 217},
              {"label": "Store room", "value": 259},
              {"label": "Study", "value": 218},
              {"label": "Under stairs cupboard", "value": 219},
              {"label": "Utility room", "value": 220},
              {"label": "Other", "value": 32}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room",
            "info": "The name of the room"
          },
          {
            "name": "room_other",
            "label": "Room name *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter a room name",
            "info": "The room name if not in the list",
            "rules": [
              {
                "field": "room_id",
                "type": "mandatory",
                "validity": "eq",
                "value": 32
              },
              {
                "field": "room_id",
                "type": "visibility",
                "validity": "eq",
                "value": 32
              }
            ]
          },
          {
            "name": "360_photos",
            "label": "360 Degree Photos",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please upload any 360 degree photos",
            "info": "Are there any 360 degree photos?"
          },
          {
            "name": "overview_photos",
            "label": "Overview Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any overview photos",
            "info": "Are there any overview photos?"
          },
          {
            "name": "general_photos",
            "label": "General Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any general photos",
            "info": "Are there any general photos?"
          },
          {
            "name": "room_shape",
            "label": "Room Shape *",
            "type": "select",
            "selection": [
              {"label": "Rectangle", "value": 1},
              {"label": "Square", "value": 2},
              {"label": "L-Shaped", "value": 3},
              {"label": "Bay Window", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room shape",
            "info": "The shape of the room"
          },
          {
            "name": "room_length1",
            "label": "Room Length *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the room",
            "info": "The length of the room in metres"
          },
          {
            "name": "room_width1",
            "label": "Room Width *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the room",
            "info": "The width of the room in metres"
          },
          {
            "name": "room_height1",
            "label": "Height *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the height of the room",
            "info": "The height of the room in metres"
          },
          {
            "name": "room_length2",
            "label": "Remaining Area Length *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the remaining area",
            "info": "The length of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "mandatory",
                "validity": "gte",
                "value": 3
              },
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_width2",
            "label": "Remaining Area Width *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the remaining area",
            "info": "The width of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "mandatory",
                "validity": "gte",
                "value": 3
              },
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_floor_ceiling_area",
            "label": "Room Floor\/Ceiling area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please enter the room's floor\/ceiling area in meters squared",
            "info": "The room's floor\/ceiling area in meters squared"
          },
          {
            "name": "room_perimeter",
            "label": "Room Perimeter",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's perimeter",
            "info": "The room's perimeter in meters"
          },
          {
            "name": "room_wall_area",
            "label": "Room Wall Area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's wall area",
            "info": "The room's wall area in meters"
          },
          {
            "name": "primary_location_of_damage",
            "label": "Damage Location *",
            "type": "select",
            "selection": [
              {"label": "Bath", "value": 1},
              {"label": "Bedroom unit", "value": 2},
              {"label": "Bidet", "value": 3},
              {"label": "Boiler", "value": 4},
              {"label": "Ceiling", "value": 5},
              {"label": "Central heating system", "value": 6},
              {"label": "Dishwasher", "value": 7},
              {"label": "Domestic water system", "value": 8},
              {"label": "Door", "value": 9},
              {"label": "Door frame", "value": 10},
              {"label": "Floor", "value": 11},
              {"label": "Hand wash basin", "value": 12},
              {"label": "Hob", "value": 13},
              {"label": "Kitchen unit", "value": 14},
              {"label": "Plasterwork", "value": 15},
              {"label": "Radiator", "value": 16},
              {"label": "Shower", "value": 17},
              {"label": "Sink", "value": 18},
              {"label": "Tiling", "value": 19},
              {"label": "Toilet", "value": 20},
              {"label": "Wall", "value": 21},
              {"label": "Woodwork", "value": 22},
              {"label": "Worktop", "value": 23},
              {"label": "Other", "value": 24}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the damage location",
            "info": "The location of the damage"
          },
          {
            "name": "primary_location_of_damage_other",
            "label": "Other Location *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter the damage location",
            "info": "The location of the damage if not in the list",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 24
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 24
              }
            ]
          },
          {
            "name": "cause_of_damage",
            "label": "Insured Cause? *",
            "type": "select",
            "selection": [
              {"label": "Accidental damage (AD)", "value": 1},
              {"label": "AD to glass and sanitary", "value": 2},
              {"label": "AD to services", "value": 3},
              {"label": "Earthquake", "value": 4},
              {"label": "Escape of water", "value": 5},
              {"label": "Explosion", "value": 6},
              {"label": "Falling trees and branches", "value": 7},
              {"label": "Fire", "value": 8},
              {"label": "Flood", "value": 9},
              {"label": "Freeze", "value": 10},
              {"label": "Impact", "value": 11},
              {"label": "Liability", "value": 12},
              {"label": "Lightning", "value": 13},
              {"label": "Malicious Damage\/Vandalism", "value": 14},
              {"label": "No insured cause", "value": 15},
              {"label": "Smoke", "value": 16},
              {"label": "Storm", "value": 17},
              {"label": "Theft\/Attempted Theft", "value": 18},
              {"label": "Subsidence", "value": 19}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the cause of damage",
            "info": "The cause of the damage"
          },
          {
            "name": "gradually_operating_cause_type",
            "label": "No Insured Cause Type *",
            "type": "select",
            "selection": [
              {"label": "Deteriorated bath seal", "value": 1},
              {"label": "Deteriorated shower seal", "value": 2},
              {"label": "Fatigue crack to shower tray", "value": 3},
              {"label": "Failure of lath and plaster ceiling", "value": 4},
              {"label": "Unknown defect", "value": 5},
              {"label": "Rainwater ingress over a period of time", "value": 6},
              {"label": "No damage", "value": 7},
              {"label": "Rising\/Penetrating damp", "value": 8},
              {"label": "Natural breakdown of materials", "value": 9},
              {"label": "Decayed timber", "value": 10},
              {"label": "Dry\/Wet rot", "value": 11},
              {"label": "Condensation", "value": 12},
              {"label": "Poor workmanship", "value": 13}
            ],
            "readonly": false,
            "errorText": "Please select the cause of damage if not covered",
            "info": "The cause of the damage if not covered by insurance",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "policy_exclusion",
            "label": "Policy Exclusion? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 1},
              {"label": "A\/D: Cleaning\/repair\/restoration", "value": 2},
              {"label": "A\/D: Pets\/insects\/vermin", "value": 3},
              {"label": "A\/D: Rainwater ingress", "value": 4},
              {"label": "A\/D: Unoccupancy", "value": 5},
              {"label": "A\/D Glass & Sanitary: Unoccupancy", "value": 6},
              {"label": "A\/D Services: Unoccupancy", "value": 7},
              {"label": "EOW: Failed sealant\/grout", "value": 8},
              {"label": "EOW: Failure to mitigate", "value": 9},
              {"label": "EOW: Overflowing apparatus", "value": 10},
              {"label": "EOW: Unoccupancy", "value": 11},
              {"label": "EOW: Decayed timber\/rot", "value": 21},
              {"label": "Impact: Felling of trees\/branches", "value": 12},
              {"label": "Impact: Fences, hedges & gates", "value": 13},
              {"label": "Impact: Damage by pets", "value": 14},
              {"label": "Vandalism: Persons lawfully on property", "value": 15},
              {"label": "Vandalism: Unoccupancy", "value": 16},
              {"label": "Storm: Fences, hedges & gates", "value": 17},
              {"label": "Storm: Rise in water table", "value": 18},
              {"label": "Theft: Persons lawfully on property", "value": 19},
              {"label": "Theft: Unoccupancy", "value": 20}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the reason for policy exclusion",
            "info": "The reason the damage is excluded from the policy"
          },
          {
            "name": "damage_pre_inception",
            "label": "Damage Pre-inception? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A - TPPD Claim", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the damage was caused pre-inception",
            "info": "Was the damage was caused pre-inception?",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "neq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "neq",
                "value": 15
              }
            ]
          },
          {
            "name": "wet_peril",
            "label": "Has water caused damage? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the damage was caused by water",
            "info": "Was the damage was caused by water?"
          },
          {
            "name": "source_of_leak",
            "label": "Source of leak *",
            "type": "select",
            "selection": [
              {"label": "Bath", "value": 1},
              {"label": "Bidet", "value": 2},
              {"label": "Boiler", "value": 3},
              {"label": "Central heating system", "value": 4},
              {"label": "Dishwasher", "value": 5},
              {"label": "Domestic water system", "value": 6},
              {"label": "Drain pipe", "value": 7},
              {"label": "Flat roof", "value": 8},
              {"label": "Gully", "value": 9},
              {"label": "Guttering", "value": 10},
              {"label": "Header tank", "value": 11},
              {"label": "Main roof", "value": 12},
              {"label": "Radiator", "value": 13},
              {"label": "Rainwater pipe", "value": 14},
              {"label": "Shower", "value": 15},
              {"label": "Sink", "value": 16},
              {"label": "Toilet", "value": 17},
              {"label": "Hand wash basin", "value": 18},
              {"label": "Washing machine", "value": 19},
              {"label": "Waste pipe", "value": 20},
              {"label": "Water cylinder", "value": 21},
              {"label": "Water softener", "value": 22},
              {"label": "Other", "value": 23}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the source of the leak",
            "info": "What was the source of the leak?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "source_of_leak_other",
            "label": "Other location *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter the location of the source of the leak",
            "info": "The location of the source of the leak",
            "rules": [
              {
                "field": "source_of_leak",
                "type": "mandatory",
                "validity": "eq",
                "value": 23
              },
              {
                "field": "source_of_leak",
                "type": "visibility",
                "validity": "eq",
                "value": 23
              }
            ]
          },
          {
            "name": "type_of_water",
            "label": "Type of Water? *",
            "type": "select",
            "selection": [
              {"label": "White", "value": 1},
              {"label": "Grey", "value": 2},
              {"label": "Black", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the type of water",
            "info": "What was the type of water that caused the leak?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "emergency_repair_completed",
            "label": "Emergency repair completed? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the emergency repair was completed",
            "info": "Was the emergency repair completed?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "trace_and_access_required",
            "label": "Trace & access required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether trace & access was required",
            "info": "Was trace & access required?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drying_required",
            "label": "Is the area wet? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the area is wet",
            "info": "Is the area wet?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_control_room",
            "label": "Hygrometer control room *",
            "type": "select",
            "selection": [
              {"label": "Bathroom", "value": 1},
              {"label": "Bedroom 1", "value": 2},
              {"label": "Bedroom 2", "value": 3},
              {"label": "Bedroom 3", "value": 4},
              {"label": "Bedroom 4", "value": 5},
              {"label": "Bedroom 5", "value": 6},
              {"label": "Bedroom 6", "value": 7},
              {"label": "Conservatory", "value": 8},
              {"label": "Communal area", "value": 9},
              {"label": "Downstairs WC", "value": 10},
              {"label": "Dining kitchen", "value": 11},
              {"label": "Dining room", "value": 12},
              {"label": "En-suite bathroom", "value": 13},
              {"label": "Family room", "value": 14},
              {"label": "Games room", "value": 15},
              {"label": "Garage", "value": 16},
              {"label": "Hall", "value": 17},
              {"label": "Hall, stairs and landing", "value": 18},
              {"label": "Kitchen", "value": 19},
              {"label": "Landing", "value": 20},
              {"label": "Loft", "value": 21},
              {"label": "Lounge", "value": 22},
              {"label": "Office", "value": 23},
              {"label": "Play room", "value": 24},
              {"label": "Reception", "value": 25},
              {"label": "Shop", "value": 26},
              {"label": "Stairs", "value": 27},
              {"label": "Store room", "value": 28},
              {"label": "Study", "value": 29},
              {"label": "Under stairs cupboard", "value": 30},
              {"label": "Utility room", "value": 31},
              {"label": "Other", "value": 32}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the hygrometer control room",
            "info": "What is the hygrometer control room?",
            "rules": [
              {
                "field": "drying_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_control_room_other",
            "label": "Room name *",
            "type": "text",
            "readonly": false,
            "errorText":
                "Please enter a room name for the hygrometer control room",
            "info":
                "The room name of the hygrometer control room if not in the list",
            "rules": [
              {
                "field": "hygrometer_control_room",
                "type": "mandatory",
                "validity": "eq",
                "value": 32
              },
              {
                "field": "hygrometer_control_room",
                "type": "visibility",
                "validity": "eq",
                "value": 32
              }
            ]
          },
          {
            "name": "hygrometer_control_air_temperature",
            "label": "Air temperature *",
            "type": "number",
            "readonly": false,
            "errorText": "Please enter the hygrometer control air temperature",
            "info": "The air temperature of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_control_relative_humidity",
            "label": "Relative humidity *",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the hygrometer control relative humidity",
            "info": "The relative humidity of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_control_sutherland_chart",
            "label": "Sutherland chart reading",
            "type": "number",
            "readonly": false,
            "errorText": "Please enter the Sutherland chart reading",
            "info":
                "The Sutherland chart reading of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_affected_air_temperature",
            "label": "Air temperature *",
            "type": "number",
            "readonly": false,
            "errorText": "Please enter the hygrometer control air temperature",
            "info": "The air temperature of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_affected_relative_humidity",
            "label": "Relative humidity *",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the hygrometer control relative humidity",
            "info": "The relative humidity of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "hygrometer_affected_sutherlandchart",
            "label": "Sutherland chart reading",
            "type": "number",
            "readonly": false,
            "errorText": "Please enter the Sutherland chart reading",
            "info":
                "The Sutherland chart reading of the hygrometer control room",
            "rules": [
              {
                "field": "drying_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "protimeter_photo",
            "label": "Protimeter readings(s) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select the protimeter readings photos to upload",
            "info": "Photos of the protimeter readings",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "period_of_leaktime",
            "label": "Period of ongoing leak\/ingress *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the period of ongoing leak\/ingress",
            "info": "The period of ongoing leak\/ingress",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "period_of_leaktime_unit",
            "label": "Ongoing leak\/ingress unit *",
            "type": "select",
            "selection": [
              {"label": "Months", "value": 1},
              {"label": "Weeks", "value": 2},
              {"label": "Days", "value": 3},
              {"label": "Hours", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ongoing leak\/ingress unit",
            "info": "The ongoing leak\/ingress unit of measurement",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "materials_affected",
            "label": "Materials affected *",
            "type": "select",
            "selection": [
              {"label": "Timber", "value": 1},
              {"label": "Plaster", "value": 2},
              {"label": "Plasterboard", "value": 3},
              {"label": "Masonary", "value": 4},
              {"label": "Concrete", "value": 5},
              {"label": "Plaster and Lath", "value": 6},
              {"label": "Insulation", "value": 7},
              {"label": "Decoration", "value": 8}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the materials affected",
            "info": "The the materials affected",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "size_of_wet_area",
            "label": "Wet area *",
            "type": "select",
            "selection": [
              {"label": "0 - 5m\u00c2\u00b2", "value": 1},
              {"label": "5 - 10m\u00c2\u00b2", "value": 2},
              {"label": "10+m\u00c2\u00b2", "value": 3},
              {"label": "N\/A", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the size of the wet area",
            "info": "The size of the wet area",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "area_saturated",
            "label": "Area saturated? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter if the area was saturated",
            "info": "Is the area saturated?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drying_equipment_required",
            "label": "Assisted drying required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter if assisted drying is required",
            "info": "Is assisted drying required?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drying_expected_period",
            "label": "Expected length of drying period? *",
            "type": "select",
            "selection": [
              {"label": "14 Days", "value": 1},
              {"label": "21 Days", "value": 2},
              {"label": "28 Days", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please enter the expected length of the drying period",
            "info": "The expected length of the drying period",
            "rules": [
              {
                "field": "drying_equipment_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_equipment_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "record_audio_drying",
            "label": "Drying Dictation *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "errorText": "Please upload the drying dictation",
            "info": "The drying dictation",
            "rules": [
              {
                "field": "drying_equipment_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_equipment_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "strip_out_required",
            "label": "Strip out Required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter if strip out is required",
            "info": "Is strip out required?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "record_audio_stripout",
            "label": "Strip Out Dictation *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "errorText": "Please upload the strip out dictation",
            "info": "The strip out dictation",
            "rules": [
              {
                "field": "strip_out_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "strip_out_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "policy_cover",
            "label": "Policy Cover *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Partial", "value": 3},
              {"label": "To be confirmed", "value": 4},
              {"label": "N\/A - TPPD Claim", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select if the damaged is covered by the policy",
            "info": "Is the damaged covered by the policy?"
          },
          {
            "name": "internal_estimate_type",
            "label": "Internal Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select type of estimate",
            "info": "If an estimate was given, who gave it"
          },
          {
            "name": "internal_estimate",
            "label": "Claimed Amount *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the amount claimed for the estimate",
            "info": "The amount claimed for the estimate",
            "rules": [
              {
                "field": "policy_cover",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "policy_cover",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "internal_estimate_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the amount of VAT on the estimate",
            "info": "The amount of VAT on the estimate",
            "rules": [
              {
                "field": "policy_cover",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "potential_nonvisible_damage",
            "label": "Potential for non-visible damage? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether there is potential non-visible damage",
            "info": "Was the emergency repair completed?",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "neq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "neq",
                "value": 15
              }
            ]
          },
          {
            "name": "potential_acm",
            "label": "Potential ACM? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether there is potentially ACM",
            "info": "Is there potential ACM?"
          },
          {
            "name": "potential_acm_details_multi",
            "label": "Materials affected *",
            "type": "multiselect",
            "selection": [
              {"label": "Textured ceiling coating", "value": 1},
              {"label": "Textured wall coating", "value": 2},
              {"label": "Floor tiles", "value": 3},
              {"label": "Wall panel", "value": 4},
              {"label": "Lagging", "value": 5},
              {"label": "Gasket\/rope seal", "value": 6},
              {"label": "Insulation", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select materials affected",
            "info": "Which materials are affected?",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "potential_acm_sample_taken",
            "label": "ACM Kit Used? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 2},
              {"label": "Yes - 1 kit", "value": 1},
              {"label": "Yes - 2 kits", "value": 3},
              {"label": "Yes - 3 kits", "value": 4},
              {"label": "Yes - 4 kits", "value": 5},
              {"label": "Yes - 5 kits", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the number of ACM sample kits used",
            "info": "If ACM sample kits were used, the number of kits",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "acm_photo",
            "label": "ACM Photograph(s) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ACM photos to upload",
            "info": "Photos of any ACM",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_arrival_damage_text",
            "label": "ACM Dictation *",
            "errorText": "Please record details of any ACM",
            "info": "Audio details of any ACM",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_internal_damage_text",
            "label": "Description of Internal Damage *",
            "errorText": "Please provide details of the internal damage",
            "info": "Audio details of the internal damage",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Internal Damage Form (Storm)",
        "uuid": "INTERNAL_DAMAGE_FORM_STORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-form",
        "put_url": "\/api\/v1\/internal-damage-form\/%FORM_ID%",
        "fields": [
          {
            "name": "room_id",
            "label": "Name of Room *",
            "type": "select",
            "selection": [
              {"label": "Bathroom", "value": 199},
              {"label": "Bedroom 1", "value": 193},
              {"label": "Bedroom 2", "value": 194},
              {"label": "Bedroom 3", "value": 195},
              {"label": "Bedroom 4", "value": 196},
              {"label": "Bedroom 5", "value": 197},
              {"label": "Bedroom 6", "value": 198},
              {"label": "Conservatory", "value": 200},
              {"label": "Communal area", "value": 201},
              {"label": "Downstairs WC", "value": 204},
              {"label": "Dining kitchen", "value": 202},
              {"label": "Dining room", "value": 203},
              {"label": "En-suite bathroom", "value": 205},
              {"label": "Family room", "value": 206},
              {"label": "Games room", "value": 207},
              {"label": "Garage", "value": 208},
              {"label": "Hall", "value": 209},
              {"label": "Hall, stairs and landing", "value": 210},
              {"label": "Kitchen", "value": 211},
              {"label": "Landing", "value": 212},
              {"label": "Loft", "value": 213},
              {"label": "Lounge", "value": 214},
              {"label": "Office", "value": 215},
              {"label": "Play room", "value": 216},
              {"label": "Reception", "value": 258},
              {"label": "Shop", "value": 260},
              {"label": "Stairs", "value": 217},
              {"label": "Store room", "value": 259},
              {"label": "Study", "value": 218},
              {"label": "Under stairs cupboard", "value": 219},
              {"label": "Utility room", "value": 220},
              {"label": "Other", "value": 32}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room",
            "info": "The name of the room"
          },
          {
            "name": "room_other",
            "label": "Room name *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter a room name",
            "info": "The room name if not in the list",
            "rules": [
              {
                "field": "room_id",
                "type": "mandatory",
                "validity": "eq",
                "value": 32
              },
              {
                "field": "room_id",
                "type": "visibility",
                "validity": "eq",
                "value": 32
              }
            ]
          },
          {
            "name": "360_photos",
            "label": "360 Degree Photos",
            "type": "image",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please upload any 360 degree photos",
            "info": "Are there any 360 degree photos?"
          },
          {
            "name": "overview_photos",
            "label": "Overview Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any overview photos",
            "info": "Are there any overview photos?"
          },
          {
            "name": "general_photos",
            "label": "General Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any general photos",
            "info": "Are there any general photos?"
          },
          {
            "name": "room_shape",
            "label": "Room Shape *",
            "type": "select",
            "selection": [
              {"label": "Rectangle", "value": 1},
              {"label": "Square", "value": 2},
              {"label": "L-Shaped", "value": 3},
              {"label": "Bay Window", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room shape",
            "info": "The shape of the room"
          },
          {
            "name": "room_length1",
            "label": "Room Length *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the room",
            "info": "The length of the room in metres"
          },
          {
            "name": "room_width1",
            "label": "Room Width *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the room",
            "info": "The width of the room in metres"
          },
          {
            "name": "room_height1",
            "label": "Height *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the height of the room",
            "info": "The height of the room in metres"
          },
          {
            "name": "room_length2",
            "label": "Remaining Area Length *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the remaining area",
            "info": "The length of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "mandatory",
                "validity": "gte",
                "value": 3
              },
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_width2",
            "label": "Remaining Area Width *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the remaining area",
            "info": "The width of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "room_shape",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              }
            ]
          },
          {
            "name": "room_floor_ceiling_area",
            "label": "Room Floor\/Ceiling area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please enter the room's floor\/ceiling area in meters squared",
            "info": "The room's floor\/ceiling area in meters squared"
          },
          {
            "name": "room_perimeter",
            "label": "Room Perimeter",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's perimeter",
            "info": "The room's perimeter in meters"
          },
          {
            "name": "room_wall_area",
            "label": "Room Wall Area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's wall area",
            "info": "The room's wall area in meters"
          },
          {
            "name": "primary_location_of_damage",
            "label": "Damage Location *",
            "type": "select",
            "selection": [
              {"label": "Bath", "value": 1},
              {"label": "Bedroom unit", "value": 2},
              {"label": "Bidet", "value": 3},
              {"label": "Boiler", "value": 4},
              {"label": "Ceiling", "value": 5},
              {"label": "Central heating system", "value": 6},
              {"label": "Dishwasher", "value": 7},
              {"label": "Domestic water system", "value": 8},
              {"label": "Door", "value": 9},
              {"label": "Door frame", "value": 10},
              {"label": "Floor", "value": 11},
              {"label": "Hand wash basin", "value": 12},
              {"label": "Hob", "value": 13},
              {"label": "Kitchen unit", "value": 14},
              {"label": "Plasterwork", "value": 15},
              {"label": "Radiator", "value": 16},
              {"label": "Shower", "value": 17},
              {"label": "Sink", "value": 18},
              {"label": "Tiling", "value": 19},
              {"label": "Toilet", "value": 20},
              {"label": "Wall", "value": 21},
              {"label": "Woodwork", "value": 22},
              {"label": "Worktop", "value": 23},
              {"label": "Other", "value": 24}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the damage location",
            "info": "The location of the damage"
          },
          {
            "name": "primary_location_of_damage_other",
            "label": "Other Location *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter the damage location",
            "info": "The location of the damage if not in the list",
            "rules": [
              {
                "field": "primary_location_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 24
              },
              {
                "field": "primary_location_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 24
              }
            ]
          },
          {
            "name": "cause_of_damage",
            "label": "Insured Cause? *",
            "type": "select",
            "selection": [
              {"label": "Accidental damage (AD)", "value": 1},
              {"label": "AD to glass and sanitary", "value": 2},
              {"label": "AD to services", "value": 3},
              {"label": "Earthquake", "value": 4},
              {"label": "Escape of water", "value": 5},
              {"label": "Explosion", "value": 6},
              {"label": "Falling trees and branches", "value": 7},
              {"label": "Fire", "value": 8},
              {"label": "Flood", "value": 9},
              {"label": "Freeze", "value": 10},
              {"label": "Impact", "value": 11},
              {"label": "Liability", "value": 12},
              {"label": "Lightning", "value": 13},
              {"label": "Malicious Damage\/Vandalism", "value": 14},
              {"label": "No insured cause", "value": 15},
              {"label": "Smoke", "value": 16},
              {"label": "Storm", "value": 17},
              {"label": "Theft\/Attempted Theft", "value": 18},
              {"label": "Subsidence", "value": 19}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the cause of damage",
            "info": "The cause of the damage"
          },
          {
            "name": "gradually_operating_cause_type",
            "label": "No Insured Cause Type *",
            "type": "select",
            "selection": [
              {"label": "Deteriorated bath seal", "value": 1},
              {"label": "Deteriorated shower seal", "value": 2},
              {"label": "Fatigue crack to shower tray", "value": 3},
              {"label": "Failure of lath and plaster ceiling", "value": 4},
              {"label": "Unknown defect", "value": 5},
              {"label": "Rainwater ingress over a period of time", "value": 6},
              {"label": "No damage", "value": 7},
              {"label": "Rising\/Penetrating damp", "value": 8},
              {"label": "Natural breakdown of materials", "value": 9},
              {"label": "Decayed timber", "value": 10},
              {"label": "Dry\/Wet rot", "value": 11},
              {"label": "Condensation", "value": 12},
              {"label": "Poor workmanship", "value": 13}
            ],
            "readonly": false,
            "errorText": "Please select the cause of damage if not covered",
            "info": "The cause of the damage if not covered by insurance",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "policy_exclusion",
            "label": "Policy Exclusion? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 1},
              {"label": "A\/D: Cleaning\/repair\/restoration", "value": 2},
              {"label": "A\/D: Pets\/insects\/vermin", "value": 3},
              {"label": "A\/D: Rainwater ingress", "value": 4},
              {"label": "A\/D: Unoccupancy", "value": 5},
              {"label": "A\/D Glass & Sanitary: Unoccupancy", "value": 6},
              {"label": "A\/D Services: Unoccupancy", "value": 7},
              {"label": "EOW: Failed sealant\/grout", "value": 8},
              {"label": "EOW: Failure to mitigate", "value": 9},
              {"label": "EOW: Overflowing apparatus", "value": 10},
              {"label": "EOW: Unoccupancy", "value": 11},
              {"label": "EOW: Decayed timber\/rot", "value": 21},
              {"label": "Impact: Felling of trees\/branches", "value": 12},
              {"label": "Impact: Fences, hedges & gates", "value": 13},
              {"label": "Impact: Damage by pets", "value": 14},
              {"label": "Vandalism: Persons lawfully on property", "value": 15},
              {"label": "Vandalism: Unoccupancy", "value": 16},
              {"label": "Storm: Fences, hedges & gates", "value": 17},
              {"label": "Storm: Rise in water table", "value": 18},
              {"label": "Theft: Persons lawfully on property", "value": 19},
              {"label": "Theft: Unoccupancy", "value": 20}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the reason for policy exclusion",
            "info": "The reason the damage is excluded from the policy",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "damage_pre_inception",
            "label": "Damage Pre-inception? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A - TPPD Claim", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the damage was caused pre-inception",
            "info": "Was the damage was caused pre-inception?",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "wet_peril",
            "label": "Has Water Caused Damage? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the damage was caused by water",
            "info": "Was the damage was caused by water?"
          },
          {
            "name": "drying_required",
            "label": "Is the area wet? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the area is wet",
            "info": "Is the area wet?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "protimeter_photo",
            "label": "Protimeter readings(s) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select the protimeter readings photos to upload",
            "info": "Photos of the protimeter readings",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drying_equipment_required",
            "label": "Assisted drying required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter if assisted drying is required",
            "info": "Is assisted drying required?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drying_expected_period",
            "label": "Expected length of drying period? *",
            "type": "select",
            "selection": [
              {"label": "14 Days", "value": 1},
              {"label": "21 Days", "value": 2},
              {"label": "28 Days", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please enter the expected length of the drying period",
            "info": "The expected length of the drying period",
            "rules": [
              {
                "field": "drying_equipment_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_equipment_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "record_audio_drying",
            "label": "Drying Dictation *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "errorText": "Please upload the drying dictation",
            "info": "The drying dictation",
            "rules": [
              {
                "field": "drying_equipment_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "drying_equipment_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "strip_out_required",
            "label": "Strip out Required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter if strip out is required",
            "info": "Is strip out required?",
            "rules": [
              {
                "field": "wet_peril",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "wet_peril",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "record_audio_stripout",
            "label": "Strip Out Dictation *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "errorText": "Please upload the strip out dictation",
            "info": "The strip out dictation",
            "rules": [
              {
                "field": "strip_out_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "strip_out_required",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "policy_cover",
            "label": "Policy Cover *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Partial", "value": 3},
              {"label": "To be confirmed", "value": 4},
              {"label": "N\/A - TPPD Claim", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select if the damaged is covered by the policy",
            "info": "Is the damaged covered by the policy?"
          },
          {
            "name": "internal_estimate_type",
            "label": "Internal Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select type of estimate",
            "info": "If an estimate was given, who gave it"
          },
          {
            "name": "internal_estimate",
            "label": "Claimed Amount *",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the amount claimed for the estimate",
            "info": "The amount claimed for the estimate",
            "rules": [
              {
                "field": "policy_cover",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "policy_cover",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "internal_estimate_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the amount of VAT on the estimate",
            "info": "The amount of VAT on the estimate",
            "rules": [
              {
                "field": "policy_cover",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "potential_nonvisible_damage",
            "label": "Potential for non-visible damage? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the emergency repair was completed",
            "info": "Was the emergency repair completed?",
            "rules": [
              {
                "field": "cause_of_damage",
                "type": "mandatory",
                "validity": "eq",
                "value": 15
              },
              {
                "field": "cause_of_damage",
                "type": "visibility",
                "validity": "eq",
                "value": 15
              }
            ]
          },
          {
            "name": "potential_acm",
            "label": "Potential ACM? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether their is potentially ACM",
            "info": "Is there potential ACM?"
          },
          {
            "name": "potential_acm_details_multi",
            "label": "Materials affected *",
            "type": "multiselect",
            "selection": [
              {"label": "Textured ceiling coating", "value": 1},
              {"label": "Textured wall coating", "value": 2},
              {"label": "Floor tiles", "value": 3},
              {"label": "Wall panel", "value": 4},
              {"label": "Lagging", "value": 5},
              {"label": "Gasket\/rope seal", "value": 6},
              {"label": "Insulation", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select materials affected",
            "info": "Which materials are affected?",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "potential_acm_sample_taken",
            "label": "ACM Kit Used? *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 2},
              {"label": "Yes - 1 kit", "value": 1},
              {"label": "Yes - 2 kits", "value": 3},
              {"label": "Yes - 3 kits", "value": 4},
              {"label": "Yes - 4 kits", "value": 5},
              {"label": "Yes - 5 kits", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the number of ACM sample kits used",
            "info": "If ACM sample kits were used, the number of kits",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "acm_photo",
            "label": "ACM Photograph(s) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ACM photos to upload",
            "info": "Photos of any ACM",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_damage_text",
            "label": "ACM Dictation *",
            "errorText": "Please record details of any ACM",
            "info": "Audio details of any ACM",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "scope_contents",
            "label": "Scope Contents",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "audio_damage_text",
            "label": "Description of External Damage *",
            "errorText": "Please provide details of the external damage",
            "info": "Audio details of the external damage",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Internal Damage Reinspection Form",
        "uuid": "INTERNAL_DAMAGE_REINSPECTION_FORM_100",
        "version": "1.0.0",
        "get_url":
            "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-reinspection-form",
        "post_url":
            "\/api\/v1\/claims\/%CLAIM_ID%\/internal-damage-reinspection-form",
        "put_url": "\/api\/v1\/internal-damage-reinspection-form\/%FORM_ID%",
        "fields": [
          {
            "name": "room_id",
            "label": "Name of Room *",
            "type": "select",
            "selection": [
              {"label": "Bathroom", "value": 199},
              {"label": "Bedroom 1", "value": 193},
              {"label": "Bedroom 2", "value": 194},
              {"label": "Bedroom 3", "value": 195},
              {"label": "Bedroom 4", "value": 196},
              {"label": "Bedroom 5", "value": 197},
              {"label": "Bedroom 6", "value": 198},
              {"label": "Conservatory", "value": 200},
              {"label": "Communal area", "value": 201},
              {"label": "Downstairs WC", "value": 204},
              {"label": "Dining kitchen", "value": 202},
              {"label": "Dining room", "value": 203},
              {"label": "En-suite bathroom", "value": 205},
              {"label": "Family room", "value": 206},
              {"label": "Games room", "value": 207},
              {"label": "Garage", "value": 208},
              {"label": "Hall", "value": 209},
              {"label": "Hall, stairs and landing", "value": 210},
              {"label": "Kitchen", "value": 211},
              {"label": "Landing", "value": 212},
              {"label": "Loft", "value": 213},
              {"label": "Lounge", "value": 214},
              {"label": "Office", "value": 215},
              {"label": "Play room", "value": 216},
              {"label": "Reception", "value": 258},
              {"label": "Shop", "value": 260},
              {"label": "Stairs", "value": 217},
              {"label": "Store room", "value": 259},
              {"label": "Study", "value": 218},
              {"label": "Under stairs cupboard", "value": 219},
              {"label": "Utility room", "value": 220},
              {"label": "Other", "value": 32}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room",
            "info": "The name of the room"
          },
          {
            "name": "room_other",
            "label": "Room name *",
            "type": "text",
            "readonly": false,
            "errorText": "Please enter a room name",
            "info": "The room name if not in the list",
            "rules": [
              {
                "field": "room_id",
                "type": "mandatory",
                "validity": "eq",
                "value": 32
              },
              {
                "field": "room_id",
                "type": "visibility",
                "validity": "eq",
                "value": 32
              }
            ]
          },
          {
            "name": "room_shape",
            "label": "Room Shape\/Dimensions",
            "type": "select",
            "selection": [
              {"label": "Rectangle", "value": 1},
              {"label": "Square", "value": 2},
              {"label": "L-Shaped", "value": 3},
              {"label": "Bay Window", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please choose a room shape",
            "info": "The shape of the room"
          },
          {
            "name": "mainArea",
            "label": "Main Area",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "room_length1",
            "label": "Room Length",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the room",
            "info": "The length of the room in metres"
          },
          {
            "name": "room_width1",
            "label": "Room Width",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the room",
            "info": "The width of the room in metres"
          },
          {
            "name": "room_height1",
            "label": "Height",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the height of the room",
            "info": "The height of the room in metres"
          },
          {
            "name": "remainingArea",
            "label": "Remaining Area",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_length2",
            "label": "Remaining Area Length",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the length of the remaining area",
            "info": "The length of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_width2",
            "label": "Remaining Area Width",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter the width of the remaining area",
            "info": "The width of the remaining area in metres",
            "rules": [
              {
                "field": "room_shape",
                "type": "visibility",
                "validity": "gte",
                "value": 3
              }
            ]
          },
          {
            "name": "room_floor_ceiling_area",
            "label": "Room Floor\/Ceiling area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please enter the room's floor\/ceiling area in meters squared",
            "info": "The room's floor\/ceiling area in meters squared"
          },
          {
            "name": "room_perimeter",
            "label": "Room Perimeter",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's perimeter",
            "info": "The room's perimeter in meters"
          },
          {
            "name": "room_wall_area",
            "label": "Room Wall Area",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the room's wall area",
            "info": "The room's wall area in meters"
          },
          {
            "name": "record_audio_drying",
            "label": "Drying Dictation",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "errorText": "Please upload the drying dictation",
            "info": "The drying dictation"
          },
          {
            "name": "potential_acm",
            "label": "Potential ACM?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "R&D Survey", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether there is potentially ACM",
            "info": "Is there potential ACM?"
          },
          {
            "name": "potential_acm_details_multi",
            "label": "Materials affected",
            "type": "multiselect",
            "selection": [
              {"label": "Textured ceiling coating", "value": 1},
              {"label": "Textured wall coating", "value": 2},
              {"label": "Floor tiles", "value": 3},
              {"label": "Wall panel", "value": 4},
              {"label": "Lagging", "value": 5},
              {"label": "Gasket\/rope seal", "value": 6},
              {"label": "Insulation", "value": 7},
              {"label": "Concealed ACM \u00e2\u0080\u0093 Wall", "value": 8},
              {"label": "Concealed ACM \u00e2\u0080\u0093 Floor", "value": 9},
              {"label": "Concealed ACM \u00e2\u0080\u0093 Ceiling", "value": 10}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select materials affected",
            "info": "Which materials are affected?",
            "rules": [
              {
                "field": "potential_acm",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "potential_acm_sample_taken",
            "label": "ACM Kit Used?",
            "type": "select",
            "selection": [
              {"label": "No", "value": 2},
              {"label": "Yes - 1 kit", "value": 1},
              {"label": "Yes - 2 kits", "value": 3},
              {"label": "Yes - 3 kits", "value": 4},
              {"label": "Yes - 4 kits", "value": 5},
              {"label": "Yes - 5 kits", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the number of ACM sample kits used",
            "info": "If ACM sample kits were used, the number of kits",
            "rules": [
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "acm_photo",
            "label": "ACM Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ACM photos to upload",
            "info": "Photos of any ACM",
            "rules": [
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_damage_text",
            "label": "ACM Dictation",
            "errorText": "Please record details of any ACM",
            "info": "Audio details of any ACM",
            "type": "audio",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "potential_acm",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_damage_text",
            "label": "Description of External Damage",
            "errorText": "Please provide details of the external damage",
            "info": "Audio details of the external damage",
            "type": "audio",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "360_photo",
            "label": "360& Degree Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the 360 degree photos to upload",
            "info": "Any 360 degree Photos"
          },
          {
            "name": "overview_photos",
            "label": "Overview Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the ovberview photos to upload",
            "info": "Any overview Photos"
          },
          {
            "name": "general_photos",
            "label": "General Photograph(s)",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the general photos to upload",
            "info": "Any general Photos"
          }
        ]
      },
      {
        "formName": "Missed Appointment Form",
        "uuid": "MISSED_APPOINTMENT_FORM_100",
        "version": "1.0.0",
        "get_url": null,
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/missed-appointment-form",
        "put_url": "",
        "fields": [
          {
            "name": "details",
            "label": "Details *",
            "type": "textarea",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please enter details",
            "info": "Details of the missed appointment"
          },
          {
            "name": "general_photos",
            "label": "General Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please upload any general photos",
            "info": "Are there any general photos?"
          }
        ]
      },
      {
        "formName": "Reminders Form",
        "uuid": "REMINDERS_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/reminders",
        "post_url": "\/api\/v1\/reminders",
        "fields": [
          {
            "name": "claim_id",
            "label": "Claim ID",
            "type": "number",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "start_date",
            "label": "Start Date",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the start date",
            "info": "Start date for this reminder"
          },
          {
            "name": "end_date",
            "label": "End Date",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the end date",
            "info": "End date for this reminder"
          },
          {
            "name": "hi_priority",
            "label": "High Priority",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 0}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select if the reminder is high priority",
            "info": "Reminder high priority?"
          },
          {
            "name": "title",
            "label": "Title",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the reminder title",
            "info": "Title for this reminder"
          },
          {
            "name": "location",
            "label": "Location",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter the reminder location",
            "info": "Location for this reminder"
          },
          {
            "name": "comments",
            "label": "Comments",
            "type": "textarea",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please enter any comments",
            "info": "Comments for this reminder"
          }
        ]
      },
      {
        "formName": "ROCs",
        "uuid": "ROCS_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/rocs",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/rocs",
        "fields": [
          {
            "name": "notify_case_manager",
            "label": "Notify Case Manager?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 0}
            ]
          },
          {
            "name": "is_private",
            "label": "Is Private?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 0}
            ]
          },
          {"name": "roc_details", "label": "ROC Details", "type": "textarea"}
        ]
      },
      {
        "formName": "Scope of Works Form",
        "uuid": "SCOPE_OF_WORKS_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/scope-of-works",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/scope-of-works",
        "fields": [
          {"name": "field", "label": "Field", "type": "text", "readonly": false}
        ]
      },
      {
        "formName": "Settlement Form",
        "uuid": "SETTLEMENT_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/settlement-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/settlement-form",
        "put_url": "\/api\/v1\/settlement-form\/%FORM_ID%",
        "fields": [
          {
            "name": "business_type_correct",
            "label": "Business Use",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "claim_decision_delivered_to",
            "label": "Claim Decision Delivered To *",
            "type": "select",
            "selection": [
              {"label": "Insured", "value": 1},
              {"label": "Mr", "value": 2},
              {"label": "Mrs", "value": 3},
              {"label": "Miss", "value": 4},
              {"label": "Ms", "value": 10},
              {"label": "Dr", "value": 11},
              {"label": "Lessee", "value": 5},
              {"label": "Managing Agent", "value": 6},
              {"label": "Not yet delivered", "value": 7},
              {"label": "Third Party", "value": 8},
              {"label": "Broker", "value": 9}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select who the claim decision was delivered to",
            "info": "Who was the claim decision delivered to?"
          },
          {
            "name": "claim_decision_accepted",
            "label": "Claim Decision Accepted? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Not yet delivered", "value": 3},
              {"label": "Non Delegated", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the claim decision was accepted",
            "info": "Was the claim decision accepted?"
          },
          {
            "name": "insured_vat_registered",
            "label": "Insured VAT Registered? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A - No policy cover", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the insured is VAT registered",
            "info": "Is the insured is VAT registered?"
          },
          {
            "name": "roofing",
            "label": "Roofing Involved? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether roofing is involved",
            "info": "Is roofing involved?"
          },
          {
            "name": "roof_estimate_type",
            "label": "Roof Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "errorText": "Please select type of roof estimate",
            "info": "If an estimate was given, who gave it",
            "rules": [
              {
                "field": "roofing",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "roofing",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "roof_estimate",
            "label": "Claimed Amount*",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the amount claimed for the roof estimate",
            "info": "The amount claimed for the roof estimate",
            "rules": [
              {
                "field": "roof_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "roof_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "roof_estimate_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText": "Please enter the amount of VAT on the roof estimate",
            "info": "The amount of VAT on the roof estimate",
            "rules": [
              {
                "field": "roof_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "roof_settlement_offered",
            "label": "Settlement *",
            "type": "number",
            "errorText":
                "Please enter the amount of the roof settlement offered",
            "info": "The amount of the roof settlement offered",
            "rules": [
              {
                "field": "roof_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "roof_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "roof_settlement_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the roof settlement offered",
            "info": "The amount of VAT on the roof settlement offered",
            "rules": [
              {
                "field": "roof_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "external",
            "label": "External Involved? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether external damage is involved",
            "info": "Is external damage involved?"
          },
          {
            "name": "external_estimate_type",
            "label": "External Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "errorText": "Please select type of roof estimate",
            "info": "If an estimate was given, who gave it",
            "rules": [
              {
                "field": "external",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "external",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "external_estimate",
            "label": "Claimed Amount*",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the amount claimed for the external estimate",
            "info": "The amount claimed for the external estimate",
            "rules": [
              {
                "field": "external_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "external_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "external_estimate_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the external estimate",
            "info": "The amount of VAT on the external estimate",
            "rules": [
              {
                "field": "external_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "external_settlement_offered",
            "label": "Settlement *",
            "type": "number",
            "errorText":
                "Please enter the amount of the external settlement offered",
            "info": "The amount of the external settlement offered",
            "rules": [
              {
                "field": "external_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "external_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "external_settlement_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the external settlement offered",
            "info": "The amount of VAT on the external settlement offered",
            "rules": [
              {
                "field": "external_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "internal",
            "label": "Internal Involved? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether internal damage is involved",
            "info": "Is internal damage involved?"
          },
          {
            "name": "internal_estimate_type",
            "label": "Internal Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "errorText": "Please select type of roof estimate",
            "info": "If an estimate was given, who gave it",
            "rules": [
              {
                "field": "internal",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "internal",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "internal_estimate",
            "label": "Claimed Amount*",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the amount claimed for the internal estimate",
            "info": "The amount claimed for the internal estimate",
            "rules": [
              {
                "field": "internal_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "internal_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "internal_estimate_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the internal estimate",
            "info": "The amount of VAT on the internal estimate",
            "rules": [
              {
                "field": "internal_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "internal_settlement_offered",
            "label": "Settlement *",
            "type": "number",
            "errorText":
                "Please enter the amount of the internal settlement offered",
            "info": "The amount of the internal settlement offered",
            "rules": [
              {
                "field": "internal_estimate_type",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "internal_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "internal_settlement_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the internal settlement offered",
            "info": "The amount of VAT on the internal settlement offered",
            "rules": [
              {
                "field": "internal_estimate_type",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "da_limit",
            "label": "DA Limit",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "policy_excess",
            "label": "Policy Excess",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "settlement_value",
            "label": "Total Settlement",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "settlement_value_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "total_settlement",
            "label": "Total settlement (inc VAT)",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "total_net_of_excess",
            "label": "Total Net of Excess",
            "type": "number",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "settlement_agreed",
            "label": "Settlement Agreed? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Not yet delivered", "value": 3},
              {"label": "N\/A - No policy cover", "value": 4},
              {"label": "Claim withdrawn (below excess)", "value": 7},
              {"label": "Claim withdrawn (Low value)", "value": 8},
              {"label": "Non Delegated", "value": 5},
              {"label": "N\/A - No legal liability", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the settlement was agreed",
            "info": "Was the settlement was agreed?"
          },
          {
            "name": "settlement_method",
            "label": "Settlement Method? *",
            "type": "select",
            "selection": [
              {"label": "Cash - DIY Repairs", "value": 1},
              {"label": "Cash - Local Contractor (No VAT)", "value": 2},
              {"label": "Cash - Local Contractor (VAT)", "value": 3},
              {"label": "Cash - Part Contractor\/Part DIY", "value": 4},
              {"label": "Contractor Network", "value": 5},
              {"label": "Under consideration", "value": 6},
              {"label": "N\/A - No policy cover", "value": 7},
              {"label": "N\/A - No legal liability", "value": 8},
              {
                "label": "Part Cash Settlement \/ Part Contractor Network",
                "value": 9
              }
            ],
            "readonly": false,
            "errorText": "Please select the settlement method",
            "info": "Was is the settlement method?",
            "rules": [
              {
                "field": "settlement_agreed",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "settlement_agreed",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "warm_handover",
            "label": "Warm Handover Complete? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No - No signal", "value": 2},
              {"label": "No - ACM test pending", "value": 3},
              {"label": "No - Customer not present", "value": 4},
              {"label": "No - Contractor did not answer", "value": 5}
            ],
            "readonly": false,
            "errorText": "Please select if the warm handover was completed",
            "info": "Was the warm handover was completed?",
            "rules": [
              {
                "field": "settlement_method",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "settlement_method",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "settlement_method",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "settlement_method",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              }
            ]
          },
          {
            "name": "repair_considerations_multi",
            "label": "Repair Considerations",
            "type": "multiselect",
            "selection": [
              {"label": "Building Control", "value": 1},
              {"label": "Planning Matters", "value": 2},
              {"label": "Party Wall Issues", "value": 3},
              {"label": "Listed Buildings", "value": 4},
              {"label": "Non-standard Construction", "value": 5},
              {"label": "Structural Work", "value": 6},
              {"label": "CDM Notifiable", "value": 7},
              {"label": "Conservation Area", "value": 8},
              {"label": "Surveying Services", "value": 9}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select any repair considerations",
            "info": "Any repair considerations?",
            "rules": [
              {
                "field": "settlement_method",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "settlement_method",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              }
            ]
          },
          {
            "name": "contents_involved",
            "label": "Contents Involved?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select whether contents are involved",
            "info": "Are contents involved?"
          },
          {
            "name": "plasticsurgeon",
            "label": "Instruct Hard Surface Repairer?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether to instruct a hard surface repairer",
            "info": "Instruct a hard surface repairer?"
          },
          {
            "name": "hard_surface_other_works",
            "label": "Any Other Works Involved? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether any other works are involved",
            "info": "Any other works are involved?"
          },
          {
            "name": "hard_surface_photos",
            "label": "Hard Surface Photos *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the hard surface photos to upload",
            "info": "Hard surface photos"
          },
          {
            "name": "audio_hard_surface",
            "label": "Hard Surface Dictation *",
            "errorText": "Please provide details of hard surface repairs",
            "info": "Provide details of hard surface repairs",
            "type": "audio",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "recovery_prospects",
            "label": "Recovery Prospects? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A - No policy cover", "value": 3},
              {"label": "N\/A - TPPD claim", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the prospect of recovery",
            "info": "Recovery prospects?"
          },
          {
            "name": "audio_recovery",
            "label": "Recovery Prospects Dictation *",
            "errorText": "Please provide details of recovery prospects",
            "info": "Provide details of recovery prospects",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "risk_management_issue",
            "label": "Risk Management Issue? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select if there are risk management issues",
            "info": "Are there risk management issues?"
          },
          {
            "name": "risk_management_photos",
            "label": "Risk Management Photos *",
            "type": "image",
            "readonly": false,
            "errorText": "Please select the risk management photos to upload",
            "info": "Risk management photos",
            "rules": [
              {
                "field": "risk_management_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "risk_management_issue",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_risk_management",
            "label": "Risk Managemnent Dictation *",
            "errorText": "Please provide details of risk management issues",
            "info": "Details of risk management issues",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "risk_management_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "risk_management_issue",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "special_investigation",
            "label": "Special Investigation Required? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether special investigation is required",
            "info": "Special investigation is required?"
          },
          {
            "name": "special_investigation_type",
            "label": "Special Investigation Type *",
            "type": "select",
            "selection": [
              {"label": "Exaggeration", "value": 1},
              {"label": "Misrepresentation", "value": 2},
              {"label": "Made up\/Set up claim", "value": 3},
              {"label": "Documentation", "value": 4},
              {"label": "Occupancy", "value": 5},
              {"label": "Tenancy", "value": 6},
              {"label": "Business Use", "value": 7}
            ],
            "readonly": false,
            "errorText": "Please select the special investigation type",
            "info": "Special Investigation Reasons?",
            "rules": [
              {
                "field": "special_investigation",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "special_investigation",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "inspection_summary_photos",
            "label": "Inspection Summary Form *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select the inspection summary photos to upload",
            "info": "Inspection summary photos"
          },
          {
            "name": "audio_inspection_summary",
            "label": "Inspection Summary Dictation *",
            "errorText": "Please provide details of the inspection summary",
            "info": "Details of inspection summary",
            "type": "audio",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "payee_title",
            "label": "Payee *",
            "type": "select",
            "selection": [
              {"label": "Mr (Insured)", "value": 1},
              {"label": "Mrs (Insured)", "value": 2},
              {"label": "Miss (Insured)", "value": 3},
              {"label": "Ms (Insured)", "value": 4},
              {"label": "Joint Policy Holder", "value": 5},
              {"label": "Lessee", "value": 6},
              {"label": "Managing Agent", "value": 7},
              {"label": "Third Party", "value": 8},
              {"label": "Not yet delivered", "value": 9},
              {"label": "N\/A - No policy cover", "value": 11},
              {"label": "Claim withdrawn", "value": 12},
              {"label": "Non Delegated", "value": 13},
              {"label": "Other", "value": 10}
            ],
            "readonly": false,
            "errorText": "Please select the payee",
            "info": "The person receiving the settlement"
          },
          {
            "name": "payee_surname",
            "label": "Payee Name",
            "type": "text",
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "declinature_letter_required",
            "label": "Claim Decision Letter Required?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether a claim decision letter required",
            "info": "Is a claim decision letter required?"
          },
          {
            "name": "claimDecisionLetterRequiredLabel",
            "label":
                "By completing \"Claim Decision Letter Required\" as \"No\" you MUST: 1. On the Inspection Summary Form complete 'Claim Decision Letter required' as 'No' and obtain the customers signature in both sections on the bottom of the form, 2. In the Settlement voice file include confirmation that no declinature letter is required together with customer agreement",
            "type": "label",
            "readonly": true,
            "requiredField": false,
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "declinature_letter_required",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "onSiteSettlementLabel",
            "label": "On-site Settlement",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "onSiteSettlementAlertLabel",
            "label":
                "IMPORTANT! When making payment you MUST check the payee and payee amount are correct as the payment will be automatically transmitted to the customer on submission of this form.",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "payee_id",
            "label": "On-site Settlement",
            "type": "select",
            "selection": [
              {"label": "Select Payee...", "value": ""}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select the payee",
            "info": "The payee for on-site settlement"
          },
          {
            "name": "onsite_final_payment",
            "label": "Is Final Payment?",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select whether the payment is final",
            "info": "Final paymant?"
          },
          {
            "name": "bvs_action_required",
            "label": "Are There Any Other Actions Required By BVS? *",
            "type": "radio",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether further action is required",
            "info": "Further Action Required By BVS?"
          },
          {
            "name": "form_completed_by",
            "label": "Customer Feedback Completed?",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No - Not in attendance", "value": 2},
              {"label": "No - Did not wish to", "value": 3},
              {"label": "No - Non Delegated", "value": 4}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether the customer feedback has been completed",
            "info": "Customer feedback completed?"
          }
        ]
      },
      {
        "formName": "Soil Data",
        "uuid": "SOIL_DATA_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/soil-data",
        "fields": [
          {
            "name": "soilscape",
            "label": "Soilscape",
            "type": "textarea",
            "readonly": true
          },
          {
            "name": "texture",
            "label": "Texture",
            "type": "text",
            "readonly": true
          },
          {"name": "coverage_label", "label": "Coverage", "type": "label"},
          {
            "name": "coverage_e",
            "label": "England",
            "type": "text",
            "readonly": true
          },
          {
            "name": "coverage_w",
            "label": "Wales",
            "type": "text",
            "readonly": true
          },
          {
            "name": "coverage_ew",
            "label": "England & Wales",
            "type": "text",
            "readonly": true
          },
          {
            "name": "drainage",
            "label": "Drainage",
            "type": "text",
            "readonly": true
          },
          {
            "name": "fertility",
            "label": "Fertility",
            "type": "text",
            "readonly": true
          },
          {
            "name": "habitats",
            "label": "Habitats",
            "type": "text",
            "readonly": true
          },
          {
            "name": "landcover",
            "label": "Landcover",
            "type": "text",
            "readonly": true
          },
          {
            "name": "carbon",
            "label": "Carbon",
            "type": "text",
            "readonly": true
          },
          {
            "name": "drains_to",
            "label": "Drains to",
            "type": "text",
            "readonly": true
          },
          {
            "name": "water_protection",
            "label": "Water protection",
            "type": "textarea",
            "readonly": true
          },
          {
            "name": "general_cropping",
            "label": "General cropping",
            "type": "textarea",
            "readonly": true
          },
          {
            "name": "dev_by_label",
            "label": "Developed by Cranfield University and sponsored by DEFRA",
            "type": "label"
          }
        ]
      },
      {
        "formName": "Subsidence Arrival Form",
        "uuid": "SUBSIDENCE_ARRIVAL_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-arrival-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-arrival-form",
        "fields": [
          {
            "name": "general_photo",
            "label": "General Photo",
            "type": "image",
            "readonly": false
          },
          {
            "name": "neighborhood",
            "label": "Neighborhood *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Residential estate", "value": 1},
              {"label": "Village", "value": 2},
              {"label": "Rural Isolated", "value": 3},
              {"label": "Town Centre", "value": 4},
              {"label": "Main Road Location", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The properties neighborhood type",
            "errorText": "Please select the neighborhood type"
          },
          {
            "name": "terrain",
            "label": "Terrain *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Level Site", "value": 1},
              {"label": "Terrace", "value": 2},
              {"label": "Down to Right", "value": 3},
              {"label": "Down to Left", "value": 4},
              {"label": "Down to Back", "value": 5},
              {"label": "Down to Front", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The properties terrain type",
            "errorText": "Please select the terrain type"
          },
          {
            "name": "property_details",
            "label": "Property Details *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Detached House", "value": 1},
              {"label": "Detached Bungalow", "value": 2},
              {"label": "Semi-detached House", "value": 3},
              {"label": "Semi-detached Bungalow", "value": 4},
              {"label": "End-terraced House", "value": 5},
              {"label": "Mid-terraced House", "value": 6},
              {"label": "Flat\/Apartment", "value": 7},
              {"label": "Converted Barn", "value": 8},
              {"label": "Office", "value": 9},
              {"label": "Shop", "value": 10},
              {"label": "Commercial Unit", "value": 11},
              {"label": "Static Caravan", "value": 12}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The property type",
            "errorText": "Please select the property type"
          },
          {
            "name": "wall_construction",
            "label": "Wall Construction *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Brick", "value": 1},
              {"label": "Stone", "value": 2},
              {"label": "Block", "value": 3},
              {"label": "Rendered", "value": 4},
              {"label": "Steel Cladding", "value": 5},
              {"label": "Concrete", "value": 6},
              {"label": "Timber Frame", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The properties wall construction",
            "errorText": "Please select the wall construction"
          },
          {
            "name": "roof_construction",
            "label": "Roof Construction *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Tile", "value": 1},
              {"label": "Slate", "value": 2},
              {"label": "Felt", "value": 3},
              {"label": "Fibre cement", "value": 4},
              {"label": "Steel", "value": 5},
              {"label": "Thatched", "value": 6},
              {"label": "Asphalt", "value": 7},
              {"label": "Single ply", "value": 8}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The properties roof construction",
            "errorText": "Please select the roof construction"
          },
          {
            "name": "has_flat_roof",
            "label": "Has Flat Roof? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Does the property have a flat roof?",
            "errorText": "Please select if the property has a flat roof"
          },
          {
            "name": "flat_roof_coverage",
            "label": "% of roof covering that is flat roof? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Less than 25%", "value": 1},
              {"label": "25% - 50%", "value": 2},
              {"label": "50% - 75%", "value": 3},
              {"label": "75% - 100%", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What % of the roof is flat?",
            "errorText": "Please select the % of roof that is flat",
            "rules": [
              {
                "field": "has_flat_roof",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "has_flat_roof",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "basement",
            "label": "Basement? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "None", "value": 1},
              {"label": "Partial", "value": 2},
              {"label": "Under Whole Building", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Does the property have a basement?",
            "errorText": "Please select whether the property has a basement"
          },
          {
            "name": "foundations",
            "label": "Foundations? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Not Known", "value": 1},
              {"label": "Strip Footings", "value": 2},
              {"label": "Raft", "value": 3},
              {"label": "Piles", "value": 4},
              {"label": "Other", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What foundation is the property built upon?",
            "errorText": "Please select the properties foundations"
          },
          {
            "name": "foundations_other",
            "label": "Other? *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the properties foundation type",
            "errorText": "Please specifiy the properties foundation type",
            "rules": [
              {
                "field": "foundations",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "foundations",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              }
            ]
          },
          {
            "name": "subsoil_ph_knowledge",
            "label": "Subsoil - Policyholder Knowledge? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Policyholder Unaware", "value": 1},
              {"label": "Clay", "value": 2},
              {"label": "Sand", "value": 3},
              {"label": "Peat", "value": 4},
              {"label": "Fill", "value": 5},
              {"label": "Chalk", "value": 6},
              {"label": "Mining Area", "value": 7},
              {"label": "Other", "value": 8}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What subsoil is the property built upon?",
            "errorText": "Please select the properties subsoil"
          },
          {
            "name": "subsoil_ph_knowledge_other",
            "label": "Other? *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the properties subsoil type",
            "errorText": "Please specifiy the properties subsoil type",
            "rules": [
              {
                "field": "subsoil_ph_knowledge",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "subsoil_ph_knowledge",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              }
            ]
          },
          {
            "name": "general_condition_of_property",
            "label": "General Property Condition *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Good State of Repair", "value": 1},
              {"label": "Fair State of Repair", "value": 2},
              {"label": "Poor State of Repair", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The properties condition",
            "errorText": "Please select the properties condition"
          },
          {
            "name": "number_storeys",
            "label": "Number of Storeys (Including Basement) *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "1", "value": 1},
              {"label": "2", "value": 2},
              {"label": "3", "value": 3},
              {"label": "4", "value": 4}
            ],
            "readonly": false,
            "requiredField": false,
            "info":
                "How many storeys does the property have (including the basement)"
          },
          {
            "name": "number_bedrooms",
            "label": "Number of Bedrooms",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "1", "value": 1},
              {"label": "2", "value": 2},
              {"label": "3", "value": 3},
              {"label": "4", "value": 4},
              {"label": "5", "value": 5},
              {"label": "6", "value": 6},
              {"label": "7", "value": 7},
              {"label": "8", "value": 8},
              {"label": "9", "value": 9},
              {"label": "10", "value": 10},
              {"label": "11", "value": 11},
              {"label": "12", "value": 12}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "The number of bedrooms the property has"
          },
          {
            "name": "year_property_built",
            "label": "Year Property Built (Circa)",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info": "What year was the property built?"
          },
          {
            "name": "length_of_time_at_property",
            "label": "Period of Ownership",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info":
                "The length of time the policy holder has been at the property"
          },
          {
            "name": "length_of_time_at_property_units",
            "label": "Units",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Years", "value": "Years"},
              {"label": "Months", "value": "Months"}
            ],
            "readonly": false,
            "requiredField": false,
            "info":
                "The units of the length of time the policy holder has been at the property"
          },
          {
            "name": "usage_of_building",
            "label": "Usage of Building *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Residential", "value": 1},
              {"label": "Tenanted", "value": 2},
              {"label": "Commercial", "value": 3},
              {"label": "Other", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What is the building used for?",
            "errorText": "Please select the usage of the building"
          },
          {
            "name": "usage_of_building_other",
            "label": "Other? *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the buildings usage",
            "errorText": "Please specifiy the buildings usage",
            "rules": [
              {
                "field": "usage_of_building",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "usage_of_building",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              }
            ]
          },
          {
            "name": "occupied",
            "label": "Occupied *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Is the property currently occupied?",
            "errorText":
                "Please select whether the property is currently occupied"
          },
          {
            "name": "freehold_leasehold",
            "label": "Freehold\/Leasehold *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Freehold", "value": 1},
              {"label": "Leasehold", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Is the property freehold or leasehold?",
            "errorText":
                "Please select whether the property is freehold or leasehold"
          },
          {
            "name": "date_first_discovered",
            "label": "Date First Discovered *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "What date was the subsidence first discovered?",
            "errorText":
                "Please provide the date the subsidence was first discovered"
          },
          {
            "name": "circumstances_of_discovery",
            "label": "Circumstances of Discovery *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "During Redecoration", "value": 1},
              {"label": "During Maintenance", "value": 2},
              {"label": "Gradual Discovery", "value": 3},
              {"label": "Sudden Discovery", "value": 4},
              {"label": "Neighbour Problems", "value": 5},
              {"label": "Point of Sale - Not Aware", "value": 6},
              {"label": "Point of Sale - Previously Aware", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What were the circumstances of the discovery",
            "errorText": "Please select the circumstances of the discovery"
          },
          {
            "name": "subsequent_action",
            "label": "Subsequent Action *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Contacted Insurers", "value": 1},
              {"label": "Arranged a Structural Survey", "value": 2},
              {"label": "Made Repairs Damage Recurred", "value": 3},
              {"label": "Advice from Builder", "value": 4},
              {"label": "Quotation from Builder", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What was the subsequent action?",
            "errorText": "Please select the subsequent action"
          },
          {
            "name": "ph_perception",
            "label": "Policyholder's Perception of Cracking *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Getting Worse", "value": 1},
              {"label": "Stable", "value": 2},
              {"label": "Opening", "value": 3},
              {"label": "Closing", "value": 4},
              {"label": "Other (refer in voice file)", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What is the policyholder's perception of the cracking?",
            "errorText":
                "Please select the policyholder's perception of the cracking"
          },
          {
            "name": "survey_at_purchase",
            "label": "Type of Survey at Purchase *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Valuation", "value": 1},
              {"label": "Home Buyers Report", "value": 2},
              {"label": "Full Structural Survey", "value": 3},
              {"label": "None", "value": 4},
              {"label": "Unlikely to be Relevant (after this time)", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info":
                "What type of survey was carried out at the time of purchase?",
            "errorText": "Please select type of survey carried out at purchase"
          },
          {
            "name": "survey_evidence",
            "label": "Copy Evidence *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Photo Available", "value": 1},
              {"label": "No Copy", "value": 2},
              {"label": "Copy Requested", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What type of edivence has the policyholder provided?",
            "errorText":
                "Please select type of evidence the policyholder has provided"
          },
          {
            "name": "photo_survey_evidence",
            "label": "Photo of Evidence",
            "type": "image",
            "readonly": false,
            "rules": [
              {
                "field": "survey_evidence",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "survey_evidence",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "recent_reports",
            "label": "Recent Reports by Others *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Have there been any recent reports by other people?",
            "errorText":
                "Please select if there have been recent reports by other people"
          },
          {
            "name": "report_evidence",
            "label": "Copy Evidence *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Photo Available", "value": 1},
              {"label": "No Copy", "value": 2},
              {"label": "Copy Requested", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What type of edivence has been provided?",
            "errorText":
                "Please select type of evidence that has been provided",
            "rules": [
              {
                "field": "recent_reports",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "recent_reports",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "photo_report_evidence",
            "label": "Photo of Evidence",
            "type": "image",
            "readonly": false,
            "rules": [
              {
                "field": "report_evidence",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "report_evidence",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "previous_subsidence_claim",
            "label": "Previous Subsidence Claim *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Has there been a previous subsidence claim?",
            "errorText":
                "Please select if there has been a previous subsidence claim"
          },
          {
            "name": "year_finalized",
            "label": "Year Finalized *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "When was it finalized?",
            "errorText": "Please provide the year finalized",
            "rules": [
              {
                "field": "previous_subsidence_claim",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "previous_subsidence_claim",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "who_handled",
            "label": "Who Handled the claim? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Cunningham Lindsey", "value": 1},
              {"label": "Infront", "value": 2},
              {"label": "Crawford", "value": 3},
              {"label": "GAB Robins", "value": 4},
              {"label": "Davies", "value": 5},
              {"label": "Other", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Who handled the previous claim?",
            "errorText": "Please select who handled the previous claim",
            "rules": [
              {
                "field": "previous_subsidence_claim",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "previous_subsidence_claim",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "who_handled_other",
            "label": "Other? *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Who handled the previous claim?",
            "errorText": "Please specifiy who handled the previous claim",
            "rules": [
              {
                "field": "previous_subsidence_claim",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "previous_subsidence_claim",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "cause",
            "label": "Cause? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Clay Shrinkage\/Trees", "value": 1},
              {"label": "Leaking Drain", "value": 2},
              {"label": "Other", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Who handled the previous claim?",
            "errorText": "Please select who handled the previous claim",
            "rules": [
              {
                "field": "previous_subsidence_claim",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "previous_subsidence_claim",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "cause_other",
            "label": "Other? *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "What was the cause?",
            "errorText": "Please specifiy the cause",
            "rules": [
              {
                "field": "cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "cause",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "type_of_repair",
            "label": "Type of repair? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Mitigation and Superstructure", "value": 1},
              {"label": "Superstructure Only", "value": 2},
              {"label": "Underpinning and Superstructure", "value": 3},
              {"label": "Ground Improvement and Superstructure", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "What type of repair is needed?",
            "errorText": "Please select the type of repair needed",
            "rules": [
              {
                "field": "previous_subsidence_claim",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "previous_subsidence_claim",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "attendance",
            "label": "Attendance",
            "type": "select",
            "selection": [
              {"label": "Met customer as Agreed", "value": 1},
              {"label": "Met Representative as Agreed", "value": 8},
              {"label": "Customer Late for Visit", "value": 4},
              {"label": "Customer Not in Attendance", "value": 9}
            ],
            "readonly": false,
            "requiredField": false
          },
          {
            "name": "is_vulnerable",
            "label": "Is Potentially Vulnerable? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true
          },
          {
            "name": "isVulnerableLabel",
            "label": "Vulnerable Customer",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerabilities",
            "label": "Vulnerabilities",
            "errorText": "Select Any Relevant Vulnerabilities",
            "info": "Select any relevant vulnerabilities",
            "type": "multiselect",
            "selection": [
              {"label": "Physical Disability", "value": 1},
              {"label": "Blind \/ Partially Sighted", "value": 2},
              {"label": "Deaf \/ Hearing Difficulties", "value": 3},
              {"label": "Severe or Long-term Illness", "value": 4},
              {"label": "Mental Health Problems", "value": 5},
              {
                "label":
                    "Change in Circumstances (e.g. Job Loss, Bereavement, Divorce)",
                "value": 6
              },
              {"label": "Caring Responsibilities", "value": 7},
              {"label": "Lack of English Language Skills", "value": 8},
              {"label": "Other Concern", "value": 9}
            ],
            "minimumSelection": 1,
            "readonly": false,
            "requiredField": true,
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "vulnerability_dictation_text",
            "label": "Vulnerability Details *",
            "errorText": "Please provide vulnerability details",
            "info":
                "** DO NOT RECORD THIS VOICE FILE IN THE PRESENCE OF THE INSURED **",
            "type": "text",
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "is_vulnerable",
                "type": "mandatory",
                "validity": "eq",
                "value": "Yes"
              },
              {
                "field": "is_vulnerable",
                "type": "visibility",
                "validity": "eq",
                "value": "Yes"
              }
            ]
          },
          {
            "name": "general_dictation_text",
            "label": "General Dictation:",
            "errorText": "Please provide details of the claim",
            "info": "Please provide details of the claim",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"]
          }
        ]
      },
      {
        "formName": "Subsidence Damage Form",
        "uuid": "SUBSIDENCE_DAMAGE_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-damage-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-damage-form",
        "fields": [
          {
            "name": "area_of_damage_multi",
            "label": "Area of Damage *",
            "type": "multiselect",
            "selection": [
              {"label": "Main building", "value": 1},
              {"label": "Extension", "value": 2},
              {"label": "Bay", "value": 3},
              {"label": "Porch", "value": 4},
              {"label": "Conservatory", "value": 5},
              {"label": "Garage", "value": 6},
              {"label": "Other", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The area of damage",
            "errorText": "Please select the area of damage"
          },
          {
            "name": "area_of_damage_other",
            "label": "Area Name *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the area of damamge",
            "errorText": "Please specifiy the area of damage",
            "rules": [
              {
                "field": "area_of_damage_multi",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "area_of_damage_multi",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              }
            ]
          },
          {
            "name": "age_of_point_of_claim",
            "label": "Age of Point of Claim:",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "The age of point of claim"
          },
          {
            "name": "age_of_point_of_claim_units",
            "label": "Units",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Years", "value": "Years"},
              {"label": "Months", "value": "Months"}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "The units of the age of point of claim"
          },
          {
            "name": "photos_subsoil",
            "label": "iGeology Screen Grab *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "The iGeology screen grab",
            "errorText": "Please upload the iGeology screen grab"
          },
          {
            "name": "photos_sketch",
            "label": "Electronic Site Sketch *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "Photo - either of paper sketch or copy from digital pen",
            "errorText": "Please upload the electronic site sketch"
          },
          {
            "name": "photos_video",
            "label": "Video *",
            "type": "video",
            "readonly": false,
            "requiredField": true,
            "info":
                "Brief description of main damage - Take video landscape - 3-5 minutes total duration",
            "errorText": "Please upload the video of the main damage"
          },
          {
            "name": "div_video_instructions",
            "label": "Video Instructions",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "photo_cracks",
            "label": "Photos of Significant Cracks for Repair *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "Photos of significant cracks for repair",
            "errorText":
                "Please upload all photos of significant cracks for repair"
          },
          {
            "name": "areas_possibly_damaged_multi",
            "label": "Areas Possibly Damaged by Subsidence *",
            "type": "multiselect",
            "selection": [
              {"label": "None", "value": 1},
              {"label": "Ext elevations - Front", "value": 2},
              {"label": "Ext elevations - Left", "value": 3},
              {"label": "Ext elevations - Right", "value": 4},
              {"label": "Ext elevations - Rear", "value": 5},
              {"label": "Ext elevations - Bay", "value": 6},
              {"label": "Ext elevations - Porch", "value": 7},
              {"label": "Ext elevations - Conservatory", "value": 8},
              {"label": "Ext elevations - Garage", "value": 9},
              {"label": "Paving", "value": 10},
              {"label": "Boundary walls", "value": 11},
              {"label": "Lounge", "value": 12},
              {"label": "Dining room", "value": 13},
              {"label": "Play room", "value": 14},
              {"label": "Kitchen", "value": 15},
              {"label": "Study", "value": 16},
              {"label": "WC", "value": 17},
              {"label": "Hall", "value": 18},
              {"label": "Stairs", "value": 19},
              {"label": "Landing", "value": 20},
              {"label": "Bedroom 1", "value": 21},
              {"label": "Bedroom 2", "value": 22},
              {"label": "Bedroom 3", "value": 23},
              {"label": "Bedroom 4", "value": 24},
              {"label": "Bedroom 5", "value": 25},
              {"label": "Bathroom 1 (inc tiles)", "value": 26},
              {"label": "Bathroom 2 (inc tiles)", "value": 27},
              {"label": "Bathroom 3 (inc tiles)", "value": 28},
              {"label": "Bathroom 1 (ex tiles)", "value": 29},
              {"label": "Bathroom 2 (ex tiles)", "value": 30},
              {"label": "Bathroom 3 (ex tiles)", "value": 31},
              {"label": "Bay", "value": 32},
              {"label": "Porch", "value": 33},
              {"label": "Conservatory", "value": 34},
              {"label": "Garage", "value": 35},
              {"label": "Other", "value": 36}
            ],
            "readonly": false,
            "requiredField": true,
            "info":
                "The possible areas damaged that have been caused by subsidence",
            "errorText":
                "Please select the possible areas damaged that have been caused by subsidence"
          },
          {
            "name": "areas_with_damage_multi",
            "label":
                "Areas With Damage, But Not Caused by Subsidence or Any Other Insured Peril *",
            "type": "multiselect",
            "selection": [
              {"label": "None", "value": 1},
              {"label": "Ext elevations - Front", "value": 2},
              {"label": "Ext elevations - Left", "value": 3},
              {"label": "Ext elevations - Right", "value": 4},
              {"label": "Ext elevations - Rear", "value": 5},
              {"label": "Ext elevations - Bay", "value": 6},
              {"label": "Paving", "value": 7},
              {"label": "Boundary walls", "value": 8},
              {"label": "Lounge", "value": 9},
              {"label": "Dining room", "value": 10},
              {"label": "Play room", "value": 11},
              {"label": "Kitchen", "value": 12},
              {"label": "Study", "value": 13},
              {"label": "WC", "value": 14},
              {"label": "Hall", "value": 15},
              {"label": "Stairs", "value": 16},
              {"label": "Landing", "value": 17},
              {"label": "Bedroom 1", "value": 18},
              {"label": "Bedroom 2", "value": 19},
              {"label": "Bedroom 3", "value": 20},
              {"label": "Bedroom 4", "value": 21},
              {"label": "Bedroom 5", "value": 22},
              {"label": "Bathroom 1 (incl tiles)", "value": 23},
              {"label": "Bathroom 2 (incl tiles)", "value": 24},
              {"label": "Bathroom 3 (incl tiles)", "value": 25},
              {"label": "Bathroom 1 (ex tiles)", "value": 26},
              {"label": "Bathroom 2 (ex tiles)", "value": 27},
              {"label": "Bathroom 3 (ex tiles)", "value": 28},
              {"label": "Conservatory", "value": 29},
              {"label": "Porch", "value": 30},
              {"label": "Garage", "value": 31},
              {"label": "Othee", "value": 32}
            ],
            "readonly": false,
            "requiredField": true,
            "info":
                "The areas with damage, but not caused by subsidence or any other insured peril",
            "errorText":
                "Please select the areas with damage, but not caused by subsidence or any other insured peril"
          },
          {
            "name": "mechanism_of_movement",
            "label": "Describe Mechanism of Movement *",
            "type": "select",
            "selection": [
              {"value": 1, "label": "No foundation movement"},
              {"value": 2, "label": "Down to front"},
              {"value": 3, "label": "Down to front right"},
              {"value": 4, "label": "Down to front left"},
              {"value": 5, "label": "Down to left"},
              {"value": 6, "label": "Down to right"},
              {"value": 7, "label": "Down to rear"},
              {"value": 8, "label": "Down to rear right"},
              {"value": 9, "label": "Down to rear left"},
              {"value": 10, "label": "Other"}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The mechanism of movement",
            "errorText": "Please provide the mechanism of movement"
          },
          {
            "name": "mechanism_of_movement_other",
            "label": "Other *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the mechanism of movement",
            "errorText": "Please specifiy the mechanism of movement",
            "rules": [
              {
                "field": "mechanism_of_movement",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "mechanism_of_movement",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              }
            ]
          },
          {
            "name": "bre_251_category",
            "label": "BRE 251 Category *",
            "type": "select",
            "selection": [
              {"label": "0 - Negligible", "value": 1},
              {"label": "1 - Very slight (hairline)", "value": 2},
              {"label": "2 - Slight (1mm)", "value": 3},
              {"label": "3 - Moderate (1-5mm)", "value": 4},
              {"label": "4 - Severe (5-15mm)", "value": 5},
              {"label": "5 - Very severe (>25mm)", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The BRE 251 category",
            "errorText": "Please provide the BRE 251 category"
          },
          {
            "name": "surveyor_onset_assessment",
            "label": "Surveyor Assessment of Onset *",
            "type": "select",
            "selection": [
              {"label": "Recent", "value": 1},
              {"label": "Longstanding", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The assessment of the onset",
            "errorText": "Please the assessment of the onset"
          },
          {
            "name": "surveyor_progression_assessment",
            "label": "Surveyor Assessment of Progression *",
            "type": "select",
            "selection": [
              {"label": "Cyclical", "value": 1},
              {"label": "Stable", "value": 2},
              {"label": "Progressive", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The assessment of the progression",
            "errorText": "Please provide the assessment of the progression"
          },
          {
            "name": "surveyor_apparent_cause",
            "label": "Surveyor Apparent Cause of Damage *",
            "type": "select",
            "selection": [
              {"label": "Not subsidence\/heave\/landslip", "value": 1},
              {"label": "Excluded from policy cover", "value": 2},
              {"label": "Repairs less than policy XS", "value": 3},
              {"label": "Clay shrinkage subsidence", "value": 4},
              {"label": "Drain related subsidence", "value": 5},
              {"label": "Water supply related subsidence", "value": 6},
              {"label": "Consolidation subsidence", "value": 7},
              {"label": "Mining subsidence", "value": 8},
              {"label": "Sinkhole", "value": 9},
              {"label": "Other subsidence", "value": 10},
              {"label": "Heave", "value": 11},
              {"label": "Landslip", "value": 12},
              {"label": "Other insured peril", "value": 13},
              {"label": "Not known", "value": 14}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The apparent cause of damage",
            "errorText": "Please provide the apparent cause of damage"
          },
          {
            "name": "cause_of_cracking",
            "label": "Cause of Cracking *",
            "type": "select",
            "selection": [
              {"label": "Thermal cracking", "value": 1},
              {"label": "Lintel failure", "value": 2},
              {"label": "Deflection (inadequate support)", "value": 3},
              {"label": "Lack of lateral restraint", "value": 4},
              {"label": "Roof spread", "value": 5},
              {"label": "Sulphate or other chemical attack", "value": 6},
              {"label": "Wall tie corrosion", "value": 7},
              {"label": "Decayed timber", "value": 8},
              {"label": "Deteriorated mortar", "value": 9},
              {"label": "Natural breakdown of material", "value": 10},
              {"label": "Other", "value": 11}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "The cause of cracking",
            "errorText": "Please provide the cause of cracking"
          },
          {
            "name": "cause_of_cracking_other",
            "label": "Other *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the cause of cracking",
            "errorText": "Please specifiy the cause of cracking",
            "rules": [
              {
                "field": "cause_of_cracking",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "cause_of_cracking",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              }
            ]
          },
          {
            "name": "state_exclusion",
            "label": "State Exclusion*",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "Specify state of exclusion",
            "errorText": "Please specifiy the state of exclusion"
          },
          {
            "name": "cause_of_damage",
            "label": "Other Insured Cause? *",
            "type": "select",
            "selection": [
              {"label": "Accidental damage (AD)", "value": 1},
              {"label": "AD to glass and sanitary", "value": 2},
              {"label": "AD to services", "value": 3},
              {"label": "Earthquake", "value": 4},
              {"label": "Escape of water", "value": 5},
              {"label": "Explosion", "value": 6},
              {"label": "Falling trees and branches", "value": 7},
              {"label": "Fire", "value": 8},
              {"label": "Flood", "value": 9},
              {"label": "Freeze", "value": 10},
              {"label": "Impact", "value": 11},
              {"label": "Liability", "value": 12},
              {"label": "Lightning", "value": 13},
              {"label": "Malicious Damage\/Vandalism", "value": 14},
              {"label": "No insured cause", "value": 15},
              {"label": "Smoke", "value": 16},
              {"label": "Storm", "value": 17},
              {"label": "Theft\/Attempted Theft", "value": 18},
              {"label": "Subsidence", "value": 19}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "The cause of damage",
            "errorText": "Please provide the cause of damage",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 13
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 13
              }
            ]
          },
          {
            "name": "conservation_area",
            "label": "Is this a Conservation Area? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Not Known", "value": 3}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "Is this a conservation area",
            "errorText": "Please specify if this is a conservation area",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              }
            ]
          },
          {
            "name": "tpo_in_force",
            "label": "Is there a TPO in Force? *",
            "type": "select",
            "selection": [
              {"label": "Yes - If Tes, Which Tree", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Not Known", "value": 3}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "Is there a TPO in force",
            "errorText": "Please specify if there is there a TPO in force",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              }
            ]
          },
          {
            "name": "identify_tree",
            "label": "Identify Tree *",
            "type": "text",
            "readonly": false,
            "requiredField": false,
            "info": "Specify the tree",
            "errorText": "Please specifiy the tree",
            "rules": [
              {
                "field": "tpo_in_force",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "tpo_in_force",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "drainage_system_type",
            "label": "Type of Drainage System? *",
            "type": "select",
            "selection": [
              {"label": "Combined", "value": 1},
              {"label": "Separate", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "What is the drainage system type?",
            "errorText": "Please specify the drainage system type",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              }
            ]
          },
          {
            "name": "drain_ownership",
            "label": "Ownership of Drains *",
            "type": "select",
            "selection": [
              {"label": "Private", "value": 1},
              {"label": "Shared", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "What is the ownership of the drains?",
            "errorText": "Please specify the ownership of the drains",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              }
            ]
          },
          {
            "name": "previous_drain_problems",
            "label": "Previous Drain Problems? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "Has there been previous drain problems?",
            "errorText":
                "Please specify if there has been previous drain problems",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              }
            ]
          },
          {
            "name": "ph_mitigation",
            "label": "Possible Mitigation Required by PH? *",
            "type": "select",
            "selection": [
              {"label": "Tree removal", "value": 1},
              {"label": "Drain repairs", "value": 2},
              {"label": "Repairs as monitor", "value": 3},
              {"label": "None", "value": 4}
            ],
            "readonly": false,
            "requiredField": false,
            "info": "Possible mitigation required by ph?",
            "errorText":
                "Please specify if there is any mitigation by PH required",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "audio_mitigation1",
            "label": "Mitigation Details *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "info": "The mitigation details",
            "errorText": "Please upload the mitigation details audio",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "further_advice_recommended",
            "label": "What Further Advice Recommended? *",
            "type": "select",
            "selection": [
              {"label": "Reputable local builder", "value": 1},
              {"label": "Specialist contractor", "value": 2},
              {"label": "Chartered engineer", "value": 3},
              {"label": "Chartered surveyor", "value": 4},
              {"label": "Other", "value": 5}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Further advice recommended?",
            "errorText": "Please specify which further advice is recommended",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "further_advice_recommended_other",
            "label": "Other *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "Other further advice",
            "errorText":
                "Please specify if other further advice is recommended",
            "rules": [
              {
                "field": "further_advice_recommended",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "further_advice_recommended",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              }
            ]
          },
          {
            "name": "during_policy",
            "label": "During Policy? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "During policy?",
            "errorText": "Did the damage occur during the policy",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "preinception_damage",
            "label": "Pre-inception Damage *",
            "type": "select",
            "selection": [
              {"label": "Change of insurer", "value": 1},
              {"label": "Pre-purchase damage", "value": 2},
              {"label": "No previous insurance in place", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Pre-inception?",
            "errorText": "Did the damage occur pre-inception",
            "rules": [
              {
                "field": "during_policy",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "during_policy",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "abi_dsa",
            "label": "Could ABI DSA Apply? *",
            "type": "select",
            "selection": [
              {"label": "Option 1 (8 weeks or less)", "value": 1},
              {"label": "Option 2 (> 1 year)", "value": 2},
              {"label": "Option 3 (> 8 weeks, < 1 year)", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Pre-inception?",
            "errorText": "Did the damage occur pre-inception",
            "rules": [
              {
                "field": "during_policy",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "during_policy",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "abi_dsa_expiry_date",
            "label": "Expiry Date of Previous Cover *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "Pre-inception?",
            "errorText": "Did the damage occur pre-inception",
            "rules": [
              {
                "field": "abi_dsa",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "abi_dsa",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "abi_dsa",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "abi_dsa",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "photos_abi_dsa",
            "label": "Photo of Policy Details *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "Photo of policy details",
            "errorText": "Please upload photo of the policy details",
            "rules": [
              {
                "field": "abi_dsa",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "abi_dsa",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "abi_dsa",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "abi_dsa",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "contents_insurer",
            "label": "Contents Insurer *",
            "type": "select",
            "selection": [
              {"label": "No", "value": 1},
              {"label": "Combined", "value": 2},
              {"label": "Yes (take photo)", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Contents insurer",
            "errorText": "Please specify contents insurer",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "photos_contents",
            "label": "Photo of Policy Details *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "Photo of policy details",
            "errorText": "Please upload photo of the policy details",
            "rules": [
              {
                "field": "contents_insurer",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "contents_insurer",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "other_insurance",
            "label": "Other Insurance *",
            "type": "select",
            "selection": [
              {"label": "None", "value": 1},
              {"label": "NHBC building warranty", "value": 2},
              {"label": "Other building warranty", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Other insurance",
            "errorText": "Please specify other insurance",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "photos_warranty",
            "label": "Photo of Policy Details *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "info": "Photo of policy details",
            "errorText": "Please upload photo of the policy details",
            "rules": [
              {
                "field": "other_insurance",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "other_insurance",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "other_insurance",
                "type": "mandatory",
                "validity": "eq",
                "value": 3
              },
              {
                "field": "other_insurance",
                "type": "visibility",
                "validity": "eq",
                "value": 3
              }
            ]
          },
          {
            "name": "potential_recovery",
            "label": "Potential Recovery *",
            "type": "select",
            "selection": [
              {"label": "Local Authority", "value": 1},
              {"label": "Commercial 3rd party tree owner", "value": 2},
              {"label": "Water authority", "value": 3},
              {"label": "Builder\/Designer", "value": 4},
              {"label": "Purchase surveyor", "value": 5},
              {"label": "Neighbour", "value": 6},
              {"label": "Other", "value": 7},
              {"label": "None", "value": 8}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Potential Recovery",
            "errorText": "Please specify potential recovery",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "audio_recovery",
            "label": "Recovery Details *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "info": "Recovery details",
            "errorText": "Please upload the recovery details dictation",
            "rules": [
              {
                "field": "potential_recovery",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "potential_recovery",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              }
            ]
          },
          {
            "name": "emergency_measures",
            "label": "Emergency Measures Required *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Emergency measures required",
            "errorText": "Please specify emergency measures required",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "emergency_measures_text",
            "label":
                "Emergency Measures Please Call the Subsidence Engineer to Discuss",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "emergency_measures",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "emergency_measures",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "surveyor_mitigation_required",
            "label": "Surveyor View on Possible Mitigation Required *",
            "type": "multiselect",
            "selection": [
              {"label": "PH vegetation removal", "value": 1},
              {"label": "Private 3rd party vegetation removal", "value": 2},
              {"label": "LA vegetation removal", "value": 3},
              {"label": "Drain repairs policyholder", "value": 4},
              {"label": "Drain repairs private third party", "value": 5},
              {"label": "Drain repairs Local Authority", "value": 6},
              {"label": "Not known?", "value": 7},
              {"label": "None (dictation option)", "value": 8}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Surveyor view on possible mitigation required",
            "errorText":
                "Please specify the surveyor's view on possible mitigation required",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "audio_mitigation2",
            "label": "Record Mitigation Details *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "info": "Surveyor mitigation details",
            "errorText":
                "Please upload the surveyor mitigation details dictation",
            "rules": [
              {
                "field": "surveyor_mitigation_required",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_mitigation_required",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              }
            ]
          },
          {
            "name": "surveyor_site_investigations",
            "label": "Surveyor View on Justification for Site Investigations *",
            "type": "select",
            "selection": [
              {"label": "Third Party recovery", "value": 1},
              {"label": "Confirm policy liability", "value": 2},
              {"label": "Establish cause", "value": 3},
              {"label": "Establish mitigation", "value": 4},
              {"label": "Design substructure", "value": 5},
              {"label": "Not known?", "value": 6},
              {"label": "None required", "value": 7}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Surveyor view on justification for site investigations",
            "errorText":
                "Please specify the surveyor's view on justification for site investigations",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "party_wall_act",
            "label": "Could Party Wall Act Apply to Repairs? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info": "Surveyor view on justification for site investigations",
            "errorText":
                "Please specify the surveyor's view on justification for site investigations",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "neighbour_name",
            "label": "Neighbour Name *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "info": "Neighbour name",
            "errorText": "Please enter the Neighbour's name",
            "rules": [
              {
                "field": "party_wall_act",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "party_wall_act",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "neighbour_address",
            "label": "Neighbour Address *",
            "type": "textarea",
            "readonly": false,
            "requiredField": true,
            "info": "Neighbour address",
            "errorText": "Please enter the Neighbour's address",
            "rules": [
              {
                "field": "party_wall_act",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "party_wall_act",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "surveyor_further_concerns",
            "label":
                "Surveyor View on Further Concerns\/Enquiries Which May be Required? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "info":
                "Surveyor view on further concerns\/enquiries which may be required",
            "errorText":
                "Please specify the surveyor's view on further concerns\/enquiries which may be required",
            "rules": [
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 4
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 5
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 6
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 7
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 8
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 9
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 10
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 11
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 12
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "mandatory",
                "validity": "eq",
                "value": 14
              },
              {
                "field": "surveyor_apparent_cause",
                "type": "visibility",
                "validity": "eq",
                "value": 14
              }
            ]
          },
          {
            "name": "audio_concerns",
            "label": "Record PH Concerns *",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"],
            "info": "Record PH concerns",
            "errorText":
                "Please upload the surveyor's view on further concerns\/enquiries dictation",
            "rules": [
              {
                "field": "surveyor_further_concerns",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "surveyor_further_concerns",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          }
        ]
      },
      {
        "formName": "Subsidence Settlement Form",
        "uuid": "SUBSIDENCE_SETTLEMENT_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-settlement-form",
        "post_url": "\/api\/v1\/claims\/%CLAIM_ID%\/subsidence-settlement-form",
        "fields": [
          {
            "name": "estimates",
            "label": "Estimates",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "insured_summary",
            "label": "Insured Summary",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "claim_summary",
            "label": "Claim Summary",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "scope_summary",
            "label": "Scope Summary",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "scope_table_summary",
            "label": "Scope Summary",
            "type": "text",
            "readonly": true,
            "requiredField": false
          },
          {
            "name": "claim_decision_delivered_to",
            "label": "Claim Decision Delivered To *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Insured", "value": 1},
              {"label": "Mr", "value": 2},
              {"label": "Mrs", "value": 3},
              {"label": "Miss", "value": 4},
              {"label": "Ms", "value": 10},
              {"label": "Dr", "value": 11},
              {"label": "Lessee", "value": 5},
              {"label": "Managing Agent", "value": 6},
              {"label": "Not yet delivered", "value": 7},
              {"label": "Third Party", "value": 8},
              {"label": "Broker", "value": 9}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select who the claim decision was delivered to",
            "info": "Who was the claim decision delivered to?"
          },
          {
            "name": "claim_decision_accepted",
            "label": "Claim Decision Accepted? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Not yet delivered", "value": 3},
              {"label": "Non Delegated", "value": 4}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether the claim decision was accepted",
            "info": "Was the claim decision accepted?"
          },
          {
            "name": "insured_vat_registered",
            "label": "Insured VAT Registered? *",
            "type": "select",
            "selection": [
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A - No policy cover", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the insured is VAT registered",
            "info": "Is the insured is VAT registered?"
          },
          {
            "name": "subs",
            "label": "Claim Outcome *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Subs Valid", "value": 2},
              {"label": "Subs Repudiation", "value": 1},
              {"label": "Other Peril", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the claim's outcome",
            "info": "What is the claims outcome?"
          },
          {
            "name": "subs_estimate_type",
            "label": "Subsidence Estimate Type *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Contractor estimate", "value": 1},
              {"label": "BVS surveyor estimate", "value": 2},
              {"label": "N\/A - no claim", "value": 3}
            ],
            "readonly": false,
            "errorText": "Please select type of subsidence estimate",
            "info": "If an estimate was given, who gave it",
            "rules": [
              {
                "field": "subs",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "subs",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "subs_estimate",
            "label": "Claimed Amount*",
            "type": "number",
            "readonly": false,
            "errorText":
                "Please enter the amount claimed for the subsidence estimate",
            "info": "The amount claimed for the subsidence estimate",
            "rules": [
              {
                "field": "subs",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "subs",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "subs_estimate_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the subsidence estimate",
            "info": "The amount of VAT on the subsidence estimate",
            "rules": [
              {
                "field": "subs",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "subs_settlement_offered",
            "label": "Settlement *",
            "type": "number",
            "errorText":
                "Please enter the amount of the subsidence settlement offered",
            "info": "The amount of the subsidence settlement offered",
            "rules": [
              {
                "field": "subs",
                "type": "mandatory",
                "validity": "lte",
                "value": 2
              },
              {
                "field": "subs",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "subs_settlement_vat",
            "label": "VAT",
            "type": "number",
            "requiredField": false,
            "errorText":
                "Please enter the amount of VAT on the subsidence settlement offered",
            "info": "The amount of VAT on the subsidence settlement offered",
            "rules": [
              {
                "field": "subs",
                "type": "visibility",
                "validity": "lte",
                "value": 2
              }
            ]
          },
          {
            "name": "da_limit",
            "label": "DA Limit",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info": "The delegated authorities limit"
          },
          {
            "name": "policy_excess",
            "label": "Policy Excess",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info": "The policies excess amount"
          },
          {
            "name": "settlement_value",
            "label": "Total Settlement",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info": "The total value of the settlement excluding VAT"
          },
          {
            "name": "settlement_value_vat",
            "label": "VAT",
            "type": "number",
            "readonly": false,
            "requiredField": false,
            "info": "The total VAT amount of the settlement"
          },
          {
            "name": "total_settlement",
            "label": "Total settlement (inc VAT)",
            "type": "number",
            "readonly": true,
            "requiredField": false,
            "info": "The total amount of the settlement including VAT"
          },
          {
            "name": "total_net_of_excess",
            "label": "Total Net of Excess",
            "type": "number",
            "readonly": true,
            "requiredField": false,
            "info": "The total net amount of the policies excess"
          },
          {
            "name": "settlement_agreed",
            "label": "Settlement Agreed? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "Under consideration", "value": 3},
              {"label": "N\/A - No policy cover", "value": 4},
              {"label": ">Claim withdrawn", "value": 7},
              {"label": "Claim withdrawn - Low repair value", "value": 8},
              {"label": "Non Delegated", "value": 5},
              {"label": "N\/A - No legal liability", "value": 6}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether the settlement was agreed",
            "info": "Was the settlement was agreed?"
          },
          {
            "name": "settlement_method",
            "label": "Settlement Method? *",
            "type": "select",
            "selection": [
              {"label": "No policy cover", "value": 7},
              {"label": "Excluded from cover", "value": 10},
              {
                "label": "Under consideration by Subsidence Engineer",
                "value": 11
              }
            ],
            "readonly": false,
            "errorText": "Please select the settlement method",
            "info": "Was is the settlement method?",
            "rules": [
              {
                "field": "settlement_agreed",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "settlement_agreed",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "contents_involved",
            "label": "Contents Involved? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select if contents is involved",
            "info": "Is contents involved?"
          },
          {
            "name": "plasticsurgeon",
            "label": "Instruct Hard Surface Repairer?",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether to instruct a hard surface repairer",
            "info": "Instruct a hard surface repairer?"
          },
          {
            "name": "risk_management_issue",
            "label": "Risk Management Issue? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2},
              {"label": "N\/A", "value": 3}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select if there are risk management issues",
            "info": "Are there risk management issues?"
          },
          {
            "name": "risk_management_photos",
            "label": "Risk Management Photos *",
            "type": "image",
            "readonly": false,
            "errorText": "Please select the risk management photos to upload",
            "info": "Risk management photos",
            "rules": [
              {
                "field": "risk_management_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "risk_management_issue",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "audio_risk_management",
            "label": "Risk Managemnent Dictation *",
            "errorText": "Please provide details of risk management issues",
            "info": "Details of risk management issues",
            "type": "text",
            "readonly": false,
            "requiredMedia": ["audio"],
            "rules": [
              {
                "field": "risk_management_issue",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "risk_management_issue",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "special_investigation",
            "label": "Special Investigation Required? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select whether special investigation is required",
            "info": "Special investigation is required?"
          },
          {
            "name": "special_investigation_type",
            "label": "Special Investigation Type *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Exaggeration", "value": 1},
              {"label": "Misrepresentation", "value": 2},
              {"label": "Made up\/Set up claim", "value": 3},
              {"label": "Documentation", "value": 4},
              {"label": "Occupancy", "value": 5},
              {"label": "Tenancy", "value": 6},
              {"label": "Business Use", "value": 7}
            ],
            "readonly": false,
            "errorText": "Please select the special investigation type",
            "info": "Special Investigation Reasons?",
            "rules": [
              {
                "field": "special_investigation",
                "type": "mandatory",
                "validity": "eq",
                "value": 1
              },
              {
                "field": "special_investigation",
                "type": "visibility",
                "validity": "eq",
                "value": 1
              }
            ]
          },
          {
            "name": "inspection_summary_photos",
            "label": "Inspection Summary Form *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText":
                "Please select the inspection summary photos to upload",
            "info": "Inspection summary photos"
          },
          {
            "name": "audio_inspection_summary",
            "label": "Settlement dictation *",
            "errorText": "Please provide details of the settlement",
            "info": "Details of the settlement",
            "type": "text",
            "readonly": false,
            "requiredField": true,
            "requiredMedia": ["audio"]
          },
          {
            "name": "declinature_letter_required",
            "label": "Claim Decision Letter Required?",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether a claim decision letter required",
            "info": "Is a claim decision letter required?"
          },
          {
            "name": "claimDecisionLetterRequiredLabel",
            "label":
                "By completing \"Claim Decision Letter Required\" as \"No\" you MUST: 1. On the Inspection Summary Form complete 'Claim Decision Letter required' as 'No' and obtain the customers signature in both sections on the bottom of the form, 2. In the Settlement voice file include confirmation that no declinature letter is required together with customer agreement",
            "type": "label",
            "readonly": true,
            "requiredField": false,
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6",
            "rules": [
              {
                "field": "declinature_letter_required",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ]
          },
          {
            "name": "onSiteSettlementLabel",
            "label": "On-site Settlement",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "onSiteSettlementAlertLabel",
            "label":
                "IMPORTANT. When making payment you MUST check the payee and payee amount are correct as the payment will be automatically transmitted to the customer on submission of this form.",
            "type": "label",
            "bgColorLightTheme": "#ed99f5",
            "bgColorDarkTheme": "#9b2ba6"
          },
          {
            "name": "payee_id",
            "label": "On-site Settlement",
            "type": "select",
            "selection": [
              {"label": "Select Payee...", "value": ""}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select the payee",
            "info": "The payee for on-site settlement"
          },
          {
            "name": "onsite_final_payment",
            "label": "Is Final Payment?",
            "type": "select",
            "selection": [
              {"label": "Select Is Final Payment?...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText": "Please select whether the payment is final",
            "info": "Final paymant?"
          },
          {
            "name": "bvs_action_required",
            "label": "Are There Any Other Actions Required By BVS? *",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select whether further action is required",
            "info": "Further Action Required By BVS?"
          },
          {
            "name": "form_completed_by",
            "label": "Customer Feedback Completed?",
            "type": "select",
            "selection": [
              {"label": "Select...", "value": ""},
              {"label": "Yes", "value": 1},
              {"label": "No - Not in attendance", "value": 2},
              {"label": "No - Did not wish to", "value": 3},
              {"label": "No - Non Delegated", "value": 4}
            ],
            "readonly": false,
            "requiredField": false,
            "errorText":
                "Please select whether the customer feedback has been completed",
            "info": "Customer feedback completed?"
          }
        ]
      },
      {
        "formName": "Subsidence Tree Form",
        "uuid": "SUBS_TREE_FORM_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/%claim_id%\/subs-tree-form",
        "post_url": "\/api\/v1\/claims\/%claim_id%\/subs-tree-form",
        "put_url": "api\/v1\/subs-tree-form\/%form_id%",
        "fields": [
          {
            "name": "ownership",
            "label": "Ownership *",
            "type": "select",
            "selection": [
              {"label": "Policyholder", "value": 1},
              {"label": "3rd Party", "value": 2}
            ],
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the Ownership",
            "info": "Who owns the tree?"
          },
          {
            "name": "third_party_name",
            "label": "Name *",
            "type": "text",
            "readonly": true,
            "requiredField": false,
            "rules": [
              {
                "field": "ownership",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ],
            "errorText": "Please provide the Thrid Parties Name",
            "info": "What is the Third Parties Name?"
          },
          {
            "name": "third_party_address",
            "label": "Address *",
            "type": "textarea",
            "readonly": true,
            "requiredField": false,
            "rules": [
              {
                "field": "ownership",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ],
            "errorText": "Please provide the Thrid Parties Address",
            "info": "What is the Third Parties Address?"
          },
          {
            "name": "third_party_tel1",
            "label": "Tel 1:",
            "type": "text",
            "readonly": true,
            "requiredField": false,
            "rules": [
              {
                "field": "ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ],
            "errorText": "Please provide the Thrid Parties Telephone Number",
            "info": "What is the Third Parties Telephone Number?"
          },
          {
            "name": "third_party_tel2",
            "label": "Tel 2:",
            "type": "text",
            "readonly": true,
            "requiredField": false,
            "rules": [
              {
                "field": "ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ],
            "errorText":
                "Please provide the Thrid Parties Alternate Telephone Number",
            "info": "What is the Third Parties Alternate Telephone Number?"
          },
          {
            "name": "third_party_email",
            "label": "Email:",
            "type": "text",
            "readonly": true,
            "requiredField": false,
            "rules": [
              {
                "field": "ownership",
                "type": "mandatory",
                "validity": "eq",
                "value": 2
              },
              {
                "field": "ownership",
                "type": "visibility",
                "validity": "eq",
                "value": 2
              }
            ],
            "errorText": "Please provide the Thrid Parties Email Address",
            "info": "What is the Third Parties Email Address?"
          },
          {
            "name": "height",
            "label": "Tree Height *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please provide the height of the tree",
            "info": "What is the height of the tree?"
          },
          {
            "name": "distance_damaged_property",
            "label": "Distance to Damaged Property *",
            "type": "number",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please provide the distance to the damaged property",
            "info": "What is the distance to the damaged property?"
          },
          {
            "name": "tree_full_photo",
            "label": "Photo (Full Tree) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the photo of the full tree",
            "info": "Photo (Full Tree)"
          },
          {
            "name": "tree_stem_photo",
            "label": "Photo (Stem) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the photo of the tree's stem",
            "info": "Photo (Stem)"
          },
          {
            "name": "tree_leaf_or_bud_photo",
            "label": "Photo (Lead or Bud) *",
            "type": "image",
            "readonly": false,
            "requiredField": true,
            "errorText": "Please select the photo of the tree's leaf or bud",
            "info": "Photo (Leaf or Bud)"
          },
          {
            "name": "general_notes",
            "label": "General Notes *",
            "type": "audio",
            "readonly": false,
            "requiredField": false,
            "errorText": "Please upload the general notes dictation",
            "info": "A dictation of the general notes for the subs tree form"
          }
        ]
      },
      {
        "formName": "Surveyor Audit Form",
        "uuid": "SURVEYOR_AUDIT_FORM_100",
        "version": "1.0.0",
        "fields": [
          {"name": "test", "label": "Test", "type": "text", "readonly": false}
        ]
      },
      {
        "formName": "Tagged Files",
        "uuid": "TAGGED_FILES_100",
        "version": "1.0.0",
        "get_url": "\/api\/v1\/claims\/{claim_id}\/tagged-files",
        "post_url": "\/api\/v1\/claims\/{claim_id}\/tagged-files",
        "fields": [
          {
            "name": "tagged_files",
            "label": "Files",
            "type": "text",
            "readonly": false
          },
          {
            "name": "category_id",
            "label": "File Category",
            "type": "text",
            "readonly": false
          }
        ]
      }
    ],
    "ratesets": [
      {"name": "BVS v1", "id": 1},
      {"name": "BVS v2", "id": 14},
      {"name": "BVS v3", "id": 18},
      {"name": "BVS Subs", "id": 16},
      {"name": "AXA", "id": 2},
      {"name": "OPTIMAX", "id": 4},
      {"name": "MITIE", "id": 5},
      {"name": "ESURE", "id": 6},
      {"name": "RSA v1", "id": 7},
      {"name": "RSA v2 (N1)", "id": 10},
      {"name": "RSA v3 (N1)", "id": 15},
      {"name": "RSA v4 (N1)", "id": 20},
      {"name": "RSA v5 (N1)", "id": 25},
      {"name": "RSA v6 (N1) ** IGNORE **", "id": 36},
      {"name": "RSA v6 (N1)", "id": 37},
      {"name": "RSA v7 (N1)", "id": 39},
      {"name": "RSA COMMERCIAL", "id": 9},
      {"name": "L&G", "id": 8},
      {"name": "L&G v3", "id": 21},
      {"name": "L&G v3.1", "id": 23},
      {"name": "L&G v3.4", "id": 38},
      {"name": "Co-op", "id": 12},
      {"name": "Lloyds v1", "id": 17},
      {"name": "Lloyds v2", "id": 26},
      {"name": "Drying", "id": 13},
      {"name": "TEST", "id": 3},
      {"name": "BVS SMART Desktop", "id": 19},
      {"name": "RSA SMART Desktop v2", "id": 40},
      {"name": "Full Claims Management", "id": 22},
      {"name": "Verso Jan 2019", "id": 24},
      {"name": "Verso July 2019 v1", "id": 27},
      {"name": "Verso July 2019 v3", "id": 28},
      {"name": "FCM Mar 20", "id": 30},
      {"name": "AXA Mar 20", "id": 31},
      {"name": "BVS v1 Mar 20", "id": 32},
      {"name": "BVS v3 Mar 20", "id": 33},
      {"name": "Verso Mar 20", "id": 34},
      {"name": "Drying Mar 20", "id": 35},
      {"name": "BVS V4 June 21", "id": 41},
      {"name": "Verso Oct 21", "id": 42},
      {"name": "BVS v1 Oct 21", "id": 43}
    ],
    "global-variables": {
      "aInsurerSettlementPreferences": {
        "1":
            "Cash settle wherever possible. Use of Contractor Network only upon customer request.",
        "2": "Cash settle wherever possible. DO NOT offer Contractor Network.",
        "3":
            "Cash settle wherever possible. Use of Contractor Network only upon customer request. DO NOT cash settle below the scope amount unless the customer has a lower repair estimate \/ invoice.",
        "4":
            "Cash Settlement is the preferred settlement method. We must not decline a request to use RSN trades or push a customer down the cash route when a managed repair is in their best interests (e.g. vulnerable or infirm customer). DO NOT cash settle below the scope amount unless the customer has a lower repair estimate \/ invoice.",
        "5":
            "Cash Settlement is the preferred settlement method. We must not decline a request to use the ABC Network or push a customer down the cash route when a managed repair is in their best interests (e.g. vulnerable or infirm customer).",
        "62":
            "Cash Settlement is the preferred settlement method. DO NOT offer contractor network unless the customer has a vulnerability that would prevent them from arranging their own repairs, or if the customer specifically requests a managed repair and will not accept a cash offer."
      },
      "aLookups": {
        "1": "Title",
        "2": "ROC Source",
        "3": "Complaint Type",
        "4": "Cancellation Reason",
        "5": "Document Category",
        "54": "Document Category (Homeserve)",
        "6": "Library Category",
        "7": "Diary Type",
        "8": "Diary Group",
        "9": "VAT Status",
        "10": "Type of Peril",
        "11": "Policy Type",
        "12": "Interested Party Types",
        "13": "Point Origin Claim",
        "14": "Scope of Works: Rooms",
        "15": "Scope of Works: Room Names",
        "16": "Scope of Works: Damage Locations",
        "17": "AXA Broker Name",
        "18": "Appointed Network",
        "51": "Appointed Network (Lloyds)",
        "55": "Appointed Network (RSA)",
        "53": "Appointed Network (Homeserve)",
        "21": "Appointed Drying Company",
        "22": "Appointed Flooring Company",
        "27": "Appointed Contents Provider",
        "29": "Appointed Glazier",
        "38": "Appointed Hard Surface Repairer",
        "39": "Appointed Conservatory Specialist",
        "40": "Appointed Asbestos Company",
        "60": "Appointed Asbestos Surveyor",
        "45": "Appointed AA Supplier",
        "57": "Appointed Contractor Storage",
        "19": "Compliment Reason",
        "20": "Surveyor Location",
        "23": "Ad hoc Insurer Tasks",
        "25": "L&G Teams",
        "33": "Esure Teams",
        "49": "RSA Teams",
        "59": "DLG Teams",
        "26": "Appointment Change Reason",
        "28": "Surveyor Inventory",
        "30": "DASA Handler Names",
        "31": "Contractor Estimate Pre-Defined Text (CM)",
        "32": "Contractor Estimate Pre-Defined Text (Surveyor)",
        "35": "Surveyor General Feedback Categories",
        "34": "Surveyor Shadowing Feedback Categories",
        "36": "Insurer General Info (iPhone)",
        "37": "Insurer Scope Notes (iPhone)",
        "41": "Reason For Declinature",
        "42": "SMS Messages",
        "43": "Travel Fee Types",
        "44": "Telephone Owner",
        "46": "AA and Disturbance Requirement Reasons",
        "47": "Case Manager Audit Questions",
        "48": "Claim Re-Opened Reasons",
        "50": "Reserving Type",
        "52": "Client Services",
        "56": "Verso Client IDs",
        "58": "Covea Policy Sections"
      },
      "aScopeOfWorksUnits": {
        "1": "Per Item",
        "2": "Per m&sup2;",
        "3": "Per Lin m",
        "4": "Prov Sum",
        "5": "PC Sum"
      }
    }
  },
  "errors": []
};
