Profile: SpecimenEu
Parent: Specimen
Id: specimen-eu-lab
Title: "Specimen: Laboratory"
Description: """This profile defines how to represent Specimens in HL7 FHIR for the purpose of this guide."""
* ^status = #draft
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, draft )
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"

/* * extension contains $specimen-feature-r5 named SpecimenFeatureR5 0..*
* extension[SpecimenFeatureR5] */
* extension contains $specimen-feature-type-r5 named SpecimenFeatureTypeR5 0..*
* extension[SpecimenFeatureTypeR5].valueCodeableConcept

* subject only Reference ( PatientEu or PatientAnimalEu or Patient or Group  or Device or Substance or Location)


* type from LabSpecimenTypesEuVs (preferred)
* type 1..1

//=== COMMENTED UNTIL https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/Issue.20with.20Specimen.2Ecollection.2Edevice.20R5.20extension IS NOT RESOLVED

/*
* collection.extension contains $specimen-collection-device-r5 named SpecimenCollectionDeviceR5 0..1
* collection.extension[SpecimenCollectionDeviceR5]
*/

* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)


* processing.additive only Reference(Substance or SpecimenAdditiveSubstance)
* container.type from LabSpecimenContainerEu (preferred)

// ----------------------------------------

Profile: SpecimenAdditiveSubstance
Parent: Substance
Id: specimen-additive-substance-eu-lab
Title: "Substance: Specimen Additive Substance"
Description: """This profile defines how to represent Specimen Additive Substances in HL7 FHIR for the purpose of this guide."""
* code from LabSpecimenAdditiveEu (preferred)