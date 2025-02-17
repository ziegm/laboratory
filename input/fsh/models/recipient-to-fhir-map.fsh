// -------------------------------------------------------------------------------					
//  Concept Model. File: 					recipient-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: recipient2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Recipient2FHIR"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Recipient Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient"					
* targetUri = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient"					
* group[=].target = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[=].element[+].code = #Recipient.identifier					
* group[=].element[=].display = "A.1.4.1 Recipient identifier"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.name					
* group[=].element[=].display = "A.1.4.2 Recipient name"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization) if the recipient is the organization."					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractionerRole), if it is the organization the professional belong to"					
* group[=].element[+].code = #Recipient.address					
* group[=].element[=].display = "A.1.4.4 Address"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractionerRole)"					
* group[=].element[+].code = #Recipient.country					
* group[=].element[=].display = "A.1.4.5 Country"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.country					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractionerRole)"					
* group[=].element[+].code = #Recipient.telecom					
* group[=].element[=].display = "A.1.4.6 Telecom"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.practitioner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If ValueReference.resolve().ofType(PractionerRole)"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
