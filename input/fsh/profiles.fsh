Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "Organization providing HIV Testing Services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/hiv-cbs/identifier/hiv-organization" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* name 1..1

Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "Patient"
Description: "A patient resource for an HIV Patient"
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    NID 0..1 and
    MR 1..1
* identifier[NID].value 0..1
* identifier[NID].system = "http://openhie.org/fhir/hiv-cbs/identifier/nid" (exactly)
* identifier[MR].value 1..1
* identifier[MR].system = "http://openhie.org/fhir/hiv-cbs/identifier/mr" (exactly)
* identifier[MR].type.coding.code = #MR
* identifier[MR].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* active 0..1
* name.given 1..*
* name.family 1..1
* telecom 0..*
* gender 1..1
* birthDate 1..1
* address 0..*
* contact 0..*
* maritalStatus 1..1 
* managingOrganization 1..1
* extension contains KeyPopulationStatus named KPS 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "This profile represents the current facility at which the patient is receiving treatment."
* extension contains HIVCareNextAppointment named next-visit 0..1 MS
* status 1..1
* class 1..1
* subject 1..1
* period 1..1
* serviceProvider 1..1
* partOf 0..1
* episodeOfCare 1..*

Extension: HIVCareNextAppointment
Id: hiv-care-next-visit
Title: "Next Appointment Date"
Description: "A date representing the patient's next scheduled appointment."
* value[x] only dateTime

Profile: TransferringFacilityEncounter
Parent: Encounter
Id: transferring-facility-encounter
Title: "Transferring Facility Encounter" 
Description: "This profile represents the facility the patient is being transferred from."
* status 1..1
* class 1..1
* period 1..1
* serviceProvider 1..1

Profile: HIVDiagnosis
Parent: Condition
Id: hiv-diagnosis
Title: "Diagnosis"
Description: "This profile represents the confirmation of HIV diagnosis."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/hiv-cbs/identifier/hiv-diagnosis" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* clinicalStatus 1..1
* verificationStatus 1..1
* code 1..1
* code from VSCondition (required)
* subject 1..1
* encounter 1..1
* recordedDate 1..1
* note 0..1

Profile: Death
Parent: Observation
Id: death
Title: "Patient Death"
Description: "This profile captures the death outcome for a patient."
* status = #final
* code from VSHIVDeath (required)
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSHIVCauseOfDeath (required)
* note 0..1

Profile: DateHIVTestDone
Parent: Observation
Id: date-hiv-test-done
Title: "Date HIV Test Done"
Description: "This profile is to record the date when HIV test was done for a patient."
* status = #final
* code from VSHIVTestDone (required)
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* note 0..1

Profile: ARVTreatment
Parent: CarePlan
Id: hiv-arv-treatment
Title: "ARV Treatment"
Description: "This profile is to record prescribed ARV regimen against a given therapeutic line."
* status 1..1
* intent 1..1
* subject 1..1
* encounter 1..1
* period 1..1
* activity 1..* 
* activity.outcomeCodeableConcept 0..* MS
* activity.outcomeCodeableConcept from VSCarePlanActivityOutcome (required)
* activity.detail 0..1
* activity.detail.scheduledPeriod 0..1
* activity.detail.kind 0..1 MS
* activity.detail.kind = #MedicationRequest
* activity.detail.code 0..1 MS
* activity.detail.code from VSARVMedicationRequest (required)
* activity.detail.status 1..1
* activity.detail.productCodeableConcept 0..1 MS
* activity.detail.productCodeableConcept from VSARVRegimen (required)
* activity.detail.extension contains ARTRegimenSwitchedOrSubstituted named artRegimenSwitchedOrSubstituted 0..1 MS
* activity.detail.extension contains ARTRegimenLine named artRegimenLine 0..1 MS
* activity.detail.scheduledPeriod 0..1
* note 0..1

Extension: ARTRegimenLine
Id: art-regimen-line
Title: "ART Regimen Line"
Description: "Therapeutic lines that are used to classify the patient's currently prescribed ARV regimen."
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTRegimenLines (required)

Extension: ARTRegimenSwitchedOrSubstituted
Id: art-regimen-switched-or-substituted
Title: "ART Regimen Switched Or Substituted"
Description: "The ARV regimen has been switched to a new ARV regimen or has been substituted by another ARV regimen."
* value[x] only CodeableConcept
* valueCodeableConcept from VSARTRegimenChangeType (required)

Profile: HIVEpisodeOfCare
Parent: EpisodeOfCare
Id: hiv-episode-of-care
Title: "Patient Enrollment Type"
Description: "This profile is used to enrol the patient into HIV care."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    PI 1..1
* identifier[PI].value 1..1
* identifier[PI].system = "http://openhie.org/fhir/hiv-cbs/identifier/enrollment-unique-id" (exactly)
* identifier[PI].type.coding.code = #PI
* identifier[PI].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* status 1..1
* diagnosis 1..* 
* diagnosis.condition 1..1 
* patient 1..1
* managingOrganization 1..1
* period 1..1 

Profile: VLSpecimen
Parent: Specimen
Id: viral-load-specimen
Title: "Viral Load Specimen"
Description: "The test sample that was collected for the initiated lab order."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    USID 1..1
* identifier[USID].value 1..1
* identifier[USID].system = "http://openhie.org/fhir/hiv-cbs/identifier/specimen-id" (exactly)
* identifier[USID].type.coding.code = #USID
* identifier[USID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type 1..1
* type from VSSpecimenType (required)
* subject 1..1
* collection.collectedDateTime 1..1
* note 0..1

Profile: HIVServiceRequestLocation
Parent: Organization
Id: hiv-service-request-location
Title: "Lab Order Request Location"
Description: "What is the location of the organization responsible for conducting the examination of the individual's sample?"
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/hiv-cbs/identifier/hiv-service-request-location" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* name 1..1

Profile: HIVServiceRequest
Parent: ServiceRequest
Id: HIV-lab-order
Title: "Lab Order"
Description: "A service request that initiates the need for the lab to collect the test sample."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier contains
    PLAC 1..1 
* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://openhie.org/fhir/hiv-cbs/identifier/lab-order-identifier" (exactly)
* identifier[PLAC].type.coding.code = #PLAC
* identifier[PLAC].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* status 1..1
* intent = #order
* code 1..1
* code from VSTestTypes (required)
* subject 1..1
* encounter 1..1
* occurrenceDateTime 1..1
* requester 1..1
* performer 1..1
* doNotPerform 0..1
* reasonCode 1..*
* reasonCode from VSReasonForAssessmentOrTestNotPerformed (required)
* specimen 1..1
* note 0..1

Profile: HIVTestResult
Parent: Observation
Id: hiv-test-results
Title: "Lab Results"
Description: "The result of the lab test which determines whether the patient is infected with HIV or not."
* status = #final
* code from VSVLResultCode (required)
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueInteger 1..1
* interpretation 1..1
* interpretation from VSVLSuppression (required)
* performer 1..1
* note 0..1

Profile: HIVPractitioner
Parent: Practitioner
Id: hiv-practitioner
Title: "Practitioner"
Description: "The healthcare professional who has been assigned to a given lab task."
* name 1..1
* telecom 0..1

Profile: HIVLabTask
Parent: Task
Id: hiv-lab-task
Title: "Lab Task"
Description: "Assists with tracking the state of the lab order and its completion status."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    FILL 1..1
* identifier[FILL].value 1..1
* identifier[FILL].system = "http://openhie.org/fhir/hiv-cbs/lab-integration/order-id" (exactly)
* identifier[FILL].type.coding.code = #FILL
* identifier[FILL].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* basedOn only Reference(ServiceRequest)
* status 1..1
* statusReason from VSReasonForSampleCancellationOrRejection
* intent = #order
* executionPeriod 1..1
* lastModified 0..1
* requester 0..1
* owner 0..1
* note 0..1
* output 0..*
* output.type.coding.code from VSVLResultCode (required)
* output.valueReference 1..1

Profile: HIVDiagnosticReport
Parent: DiagnosticReport
Id: hiv-diagnostic-report
Title: "Diagnostic Report"
Description: "A report as a result of the lab task being completed."
* basedOn only Reference(ServiceRequest)
* status = #final
* code from VSTestTypes (required)
* subject 1..1
* encounter 1..1
* performer 1..1
* result 1..1
* conclusion 0..1

Extension: KeyPopulationStatus
Id: key-population-status
Title: "Key HIV Population"
Description: "Populations who are at higher risk for HIV."
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulationSatus (required)

Profile: HIVRecencyTestDone
Parent: Observation
Id: hiv-recency-test-done
Title: "HIV Recency Test"
Description: "This profile is to record the HIV recency testing data for a patient."
* status = #final
* code from VSHIVRecencyTest (required)
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSYesNoUnknown (required)
* note 0..1

Profile: HIVRecencyTestResult
Parent: Observation
Id: hiv-recency-test-result
Title: "HIV Recency Test Result"
Description: "This profile is to record the HIV recency test result data for a patient."
* status = #final
* code from VSHIVRecencyTest (required)
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSHIVRecencyTestResult (required)
* interpretation 1..1
* interpretation from VSHIVRecencyStatus (required)
* performer 1..1
* note 0..1

Profile: CD4Percentage
Parent: Observation
Id: hiv-cd4-percentage
Title: "CD4 Percentage"
Description: "This profile is for recording the patient's CD4 percentage."
* status = #final
* code from VSCD4Percentage (required)
* subject 1..1 
* encounter 1..1
* effectiveDateTime 1..1
* performer 1..1
* valueQuantity 1..1
* derivedFrom only Reference(Observation)
* note 0..1

Profile: CD4TestResult
Parent: Observation
Id: hiv-cd4-test
Title: "Absolute CD4 Count"
Description: "This profile is for recording the Patient's CD4 Count."
* status = #final
* code from VSCD4Count (required)
* subject 1..1 
* encounter 1..1
* effectiveDateTime 1..1
* performer 1..1
* valueInteger 1..1
* note 0..1

Profile: HIVCareMedicationRequest
Parent: MedicationRequest
Id: hiv-med-req
Title: "HIV Care Medication Request"
Description: "This profile is for recording the Patient's ARV Dispensing quantity in days."
* status 1..1
* intent 1..1
* medicationCodeableConcept from VSARVRegimen (required)
* subject 1..1
* encounter 1..1 
* basedOn 1..1 
* dispenseRequest.quantity 1..1 
* note 0..1

Profile: TransferredOutServiceRequest
Parent: ServiceRequest
Id: transferred-out
Title: "Transferred Out Service Request"
Description: "A service request that initiates the need for a patient to be transferred to another organization."
* status 1..1
* intent = #order
* code 1..1
* code from VSTransferredOut (required)
* subject 1..1
* encounter 1..1
* occurrenceDateTime 1..1
* requester 1..1
* performer 1..1
* note 0..1

Profile: HIVOrganizationPatientTransferredTo
Parent: Organization
Id: hiv-organization-patient-transferred-to
Title: "HIV Organization Patient Is Transferred To"
Description: "Organization who is receiving the patient as being transferred in."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier ^slicing.description = "Slice based on the type of identifier"
* identifier contains
    XX 1..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/hiv-cbs/identifier/hiv-organization" (exactly)
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* name 1..1