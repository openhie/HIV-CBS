Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct 

ValueSet: VSVLResultCode
Id: vs-vl-result-code
Title: "Viral Load Result Code"
Description: "A code used to indicate the category for the lab result."
* ^experimental = false
* $SCT#398579006 "Human immunodeficiency virus-1 nucleic acid assay (procedure)"

ValueSet: VSVLSuppression
Id: vs-vl-suppression
Title: "Viral Load Suppressions Status"
Description: "Describes a patient's current viral load status."
* ^experimental = false
* $SCT#245780008 "Suppressed (qualifier value)"
* $SCT#19032002 "Uncontrolled (qualifier value)" //Unsuppressed
* $SCT#261665006 "Unknown (qualifier value)"

ValueSet: VSCondition
Id: vs-condition
Title: "Conditions"
Description:  "A list of possible HIV conditions."
* ^experimental = false
* $SCT#86406008 "Human immunodeficiency virus infection (disorder)"

ValueSet: VSHIVDeath
Id: vs-hiv-death
Title: "Death"
Description:  "A list of possible HIV deaths"
* ^experimental = false
* $SCT#419099009 "Dead (finding)"

ValueSet: VSHIVTestDone
Id: vs-hiv-test-done
Title: "HIV Test Done"
Description:  "Used by the observation to indicate that a HIV test was performed."
* ^experimental = false
* $SCT#315124004 "Human immunodeficiency virus viral load (procedure)"

ValueSet: VSARTRegimenLines
Id: vs-artregimen-lines
Title: "ART Regimen Lines"
Description: "A list of ART regimen therapeutic lines."
* ^experimental = false
* $SCT#708255002 "First line treatment (procedure)"
* $SCT#708256001 "Second line treatment (procedure)"
* $SCT#708257005 "Third line treatment (procedure)"

ValueSet: VSARVMedicationRequest
Id: vs-arvtreatment-activity-type
Title: "ARV Treatment Medication Request"
Description: "Codes used to represent a medication request for ART."
* ^experimental = false
*  $LNC#45260-7 "HIV ART medication"
  
ValueSet: VSPatientEnrollmentType
Id: vs-patient-enrollment-type
Title: "Patient Type at Enrolment"
Description:  "A list of Patient Types at Enrolment"
* ^experimental = false
* $SCT#185387006 "New patient consultation (procedure)"  
* $SCT#309037001 "Transfer status (finding)" 
* $SCT#182837001 "Restart of medication (procedure)" 
* $LNC#LA6505-7 "PMTCT"

ValueSet: VSSpecimenType
Id: vs-specimen-type
Title: "Specimen Type Used In Viral Load testing"
Description:  "A list of specimen types."
* ^experimental = false
* $SCT#119361006 "Plasma specimen (specimen)"
* $SCT#440500007 "Dried blood spot specimen (specimen)"
* $SCT#441620008 "Oral fluid specimen (specimen)"
* $SCT#258580003 "Whole blood specimen (specimen)"
* $SCT#119364003 "Serum specimen (specimen)"

ValueSet: VSTestTypes
Id: vs-test-types
Title: "Test Types"
Description: "A list of HIV test types"
* ^experimental = false
* $LNC#25842-6 "HIV 2 proviral DNA [Presence] in Specimen by NAA with probe detection"   
* $LNC#25836-8 "HIV 1 RNA [#/volume] (viral load) in Specimen by NAA with probe detection"

ValueSet: VSReasonForAssessmentOrTestNotPerformed
Id: vs-reason-for-assessment-or-test-not-performed
Title: "Reason for Assessment or Test Not Performed"
Description: "A list of reasons associated with the service request for the lab order."
* ^experimental = false
//Reasons for assessment
* $SCT#77386006 "Currently pregnant"
* $SCT#428450006 "Repeat"
* $SCT#171111007 "Results not available"
* $SCT#266721009 "Absent response to treatment"
* $SCT#170564007 "Chronic disease - treatment changed (finding)"
* $SCT#413712001 "Breastfeeding (mother) (observable entity)"
* $SCT#315124004 "Baseline Viral Load / Routine Viral Load"
* $SCT#2528003 "Persistent low-Level viraemia"
//Reasons test not performed
* $SCT#441510007 "Blood sample coagulated" 
* $SCT#123840003 "Contaminated specimen"
* $SCT#397933008 "Equipment failure"
* $SCT#281264009 "Inappropriate sample container used"
* $SCT#281268007 "Insufficient sample"
* $SCT#281265005 "Specimen not labeled"
* $SCT#419182006 "Supplies not available"

ValueSet: VSCarePlanActivityOutcome
Id: vs-careplan-outcome
Title: "ARV treatment outcomes"
Description: "A list of possible ARV treatment outcomes."
* ^experimental = false
* $SCT#105480006 "Procedure declined by patient (situation)"

CodeSystem: CSKeyPopulationStatus
Id: cs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Population"

ValueSet: VSKeyPopulationSatus
Id: vs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* $SCT#472986005 "Sexually active with men (finding)"
* $SCT#159799000 "Female prostitute (occupation)"
* $SCT#159800001 "Male prostitute (occupation)"
* $SCT#228388006 "Intravenous drug user (finding)"
* $SCT#417284009 "Current drug user (finding)"
* $SCT#407375002 "Surgically transgendered transsexual (finding)"
* include codes from system CSKeyPopulationStatus

ValueSet: VSHIVRecencyTest
Id: vs-hiv-recency-test
Title: "Recency HIV Test"
Description:  "Used by the observation to indicate that a HIV recency test was performed."
* ^experimental = false
* $SCT#409788009 "Rapid human immunodeficiency virus type 1 antibody test (procedure)"

ValueSet: VSHIVRecencyStatus
Id: vs-hiv-recency-status
Title: "HIV Recency Testing Status"
Description: "A list of HIV recency statuses"
* ^experimental = false
* $SCT#6493001 "Recent (qualifier value)"
* $SCT#307294006 "Personal history finding (finding)"

ValueSet: VSHIVRecencyTestResult
Id: vs-hiv-recency-test-result
Title: "Recency HIV Test Result"
Description:  "A list of HIV recency test result codes."
* ^experimental = false
* $SCT#118246004 "Laboratory test finding (navigational concept)"

ValueSet: VSYesNoUnknown
Id: vs-yes-no
Title: "Yes No Unknown"
Description:  "A list of options used to provide an answer"
* ^experimental = false
* $SCT#373066001 "Yes"
* $SCT#373067005 "No"
* $SCT#261665006 "Unknown"