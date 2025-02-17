// -------------------------------------------------------------------------------					
//  Concept Model. File: 					payer-to-fhir-map.fsh
// -------------------------------------------------------------------------------					
Instance: payer2FHIR-eu-lab					
InstanceOf: ConceptMap					
Usage: #definition					
// * url = "http://terminology.hl7.it/ConceptMap/ConceptMap-subject2osiris"					
* name = "Payer2Fhir"					
* title = "eHN Payer to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Payer Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Payer data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Payer"					
* targetUri = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "A.1.3.1 Health insurance information"					
* group[=].element[=].target.code = #insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "A.1.3.1.1 Health insurance code"					
* group[=].element[=].target.code = #insurance.payor.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization).resolve().identifier"					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "A.1.3.1.2 Health insurance name"					
* group[=].element[=].target.code = #insurance.payor.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization).resolve().name"					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.policyHolder.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.beneficiary.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.subscriberId					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #insurance.subscriber.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
* group[+].source = "http://hl7.eu/fhir/laboratory/StructureDefinition/Payer"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-eu-lab"					
					
* group[=].element[+].code = #Payer.insurance					
* group[=].element[=].display = "A.1.3.1 Health insurance information"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.identifier					
* group[=].element[=].display = "A.1.3.1.1 Health insurance code"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.name					
* group[=].element[=].display = "A.1.3.1.2 Health insurance name"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.insurance.subjectIdentifier					
* group[=].element[=].display = "A.1.3.1.3 Health insurance number"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Sometimes the identifier assigned by the payor (e.g. the SSN) is used as one of the Patient Identifiers"					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
