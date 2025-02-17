
RuleSet: SetFmmandStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}


/* RuleSet: ReportAuthorRule
* ^constraint.key = "labRpt-author"
* ^constraint.severity = #warning
* ^constraint.human = "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."  */

Invariant: labRpt-author
Description: "If a DiagnosticReport.resultsInterpreter exists this is expected to be a Composition.author; otherwise a DiagnosticReport.performer should be an author."
Severity:    #warning

Invariant: labRpt-status
Description: "DiagnosticReport.status and Composition.status shall be aligned, based on the http://hl7.eu/fhir/laboratory/ConceptMap/ConceptMap-eu-diagRptStatus2CompStatus mapping"
Severity:    #warning

RuleSet: ReportStatusRule
* status obeys labRpt-status
  * ^short = "Status of the Report" // add voc binding aligned with DiagReprt

Invariant: labRpt-enc
Description: "DiagnosticReport.encounter and Composition.encounter shall be aligned"
Severity:    #warning

RuleSet: ReportEncounterRule
* encounter obeys labRpt-enc
* encounter only Reference (Encounter)
  * ^short = "The healthcare event which this Laboratory Report is about (when test ordered)."
  * ^definition = """The healthcare event (e.g. a patient and healthcare provider interaction) which this DiagnosticReport is about."""
  * ^comment = """This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."""


Invariant: labRpt-subject
Description: "DiagnosticReport.subject and Composition.subject shall be aligned"
Severity:    #warning

RuleSet: ReportSubjectRule
* subject 1..
* subject obeys labRpt-subject
* subject only Reference (PatientEu or Patient or Group or Location or Device)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."


Invariant: labRpt-id
Description: "DiagnosticReport.identifier and Composition.identifier shall be aligned"
Severity:    #warning

RuleSet: ReportIdentifierRule
* identifier obeys labRpt-id
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Laboratory Report by the performer or other systems. It shall be common to several report versions"

Invariant: labRpt-code
Description: "DiagnosticReport.code and Composition.type shall be aligned"
Severity:    #warning

RuleSet: ReportTypeRule (element)
* {element} 1..
* {element} obeys labRpt-code
* {element}  only $CodeableConcept-uv-ips
* {element}  from LabReportTypesEuVs (preferred) // value set to be revised add alternative value sets
// based on 2023-09-01 decision
/*   * ^binding.extension.extension[0].url = "purpose"
  * ^binding.extension.extension[=].valueCode = #candidate
  * ^binding.extension.extension[+].url = "valueSet"
  * ^binding.extension.extension[=].valueCanonical = Canonical ( LabSpecialtyEuVs )
  * ^binding.extension.extension[+].url = "documentation"
  * ^binding.extension.extension[=].valueMarkdown = """Laboratory Specialties."""
  * ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "Laboratory Specialties." */
  * ^short = "Type of (Laboratory) Report"
  * ^definition = "Specifies that it refers to a Laboratory Report"


Invariant: labRpt-category
Description: "DiagnosticReport.category and Composition.category shall be aligned"
Severity:    #warning

RuleSet: ReportCategoryRule
* category obeys labRpt-category
  * ^short = "Report Category"
  * ^definition = "Specifies the Report Category: usually Laboratory"
* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies this laboratory report."
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from LabStudyTypesEuVs
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from LabSpecialtyEuVs

RuleSet: SectionComRules (short, def, code)

// * insert (Health Concern Section, test, http://loinc.org#75310-3)

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[0].valueString = "Section"
* ^short = "{short}"
* ^definition = "{def}"
* title 1..
* code 1..
* code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* code = {code} (exactly)
* text 1..
* text only Narrative
* emptyReason ..0
* emptyReason ^mustSupport = false

RuleSet: SectionEntrySliceComRules (short, def)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}"

RuleSet: SectionEntrySliceDefRules (name, card, short, def, profiles)
// SectionEntrySliceDefRules (flags, 0.., "Care Team", "Care Team", CareTeamEu)

* entry contains {name} 0..1
* entry[{name}] {card}
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}] only Reference({profiles})

//--------------------------------------------
RuleSet: NoSubSectionsRules
* section ..0
* section ^mustSupport = false

RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false

RuleSet: ObligationActorAndCode(actor, code)
* ^extension[+].url = $obligation
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {code}
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actor}

RuleSet: ObligationElement(element)
// Used for profile level obligations. Insert after obligation code and actor
* ^extension[=].extension[+].url = "elementId"
* ^extension[=].extension[=].valueString = {element}
