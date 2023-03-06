Instance: EMR
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit EMR Bundle Example"
Description: "HIV Submit EMR Bundle Example"
* type = #transaction

* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/HIVPatientExample"

* entry[+].fullUrl = "Encounter/TargetFacilityEncounterExample"
* entry[=].resource = TargetFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TargetFacilityEncounterExample"

* entry[+].fullUrl = "Encounter/TransferringFacilityEncounterExample"
* entry[=].resource = TransferringFacilityEncounterExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Encounter/TransferringFacilityEncounterExample"

* entry[+].fullUrl = "Observation/HIVTestResultExample"
* entry[=].resource = HIVTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVTestResultExample"

* entry[+].fullUrl = "Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/HIVDiagnosisExample"

* entry[+].fullUrl = "Observation/DeathExample"
* entry[=].resource = DeathExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DeathExample"

* entry[+].fullUrl = "Observation/DateHIVTestDoneExample"
* entry[=].resource = DateHIVTestDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/DateHIVTestDoneExample"

* entry[+].fullUrl = "CarePlan/ARVTreatmentExample"
* entry[=].resource = ARVTreatmentExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentExample"

* entry[+].fullUrl = "EpisodeOfCare/HIVEpisodeOfCareExample"
* entry[=].resource = HIVEpisodeOfCareExample
* entry[=].request.method = #PUT
* entry[=].request.url = "EpisodeOfCare/HIVEpisodeOfCareExample"

* entry[+].fullUrl = "Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"

* entry[+].fullUrl = "Location/HIVServiceRequestLocationExample"
* entry[=].resource = HIVServiceRequestLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/HIVServiceRequestLocationExample"

* entry[+].fullUrl = "Practitioner/PractitionerExample"
* entry[=].resource = PractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PractitionerExample"

* entry[+].fullUrl = "ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/HIVServiceRequestExample"

* entry[+].fullUrl = "Task/HIVLabOrderTaskExample"
* entry[=].resource = HIVLabOrderTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderTaskExample"

* entry[+].fullUrl = "Task/HIVLabResultTaskExample"
* entry[=].resource = HIVLabResultTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabResultTaskExample"

* entry[+].fullUrl = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"
* entry[=].resource = HIVLabResultsDiagnosticReportExample
* entry[=].request.method = #PUT
* entry[=].request.url = "DiagnosticReport/HIVLabResultsDiagnosticReportExample"

* entry[+].fullUrl = "Observation/HIVRecencyTestDoneExample"
* entry[=].resource = HIVRecencyTestDoneExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVRecencyTestDoneExample"

* entry[+].fullUrl = "Observation/HIVRecencyTestResultExample"
* entry[=].resource = HIVRecencyTestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/HIVRecencyTestResultExample"

* entry[+].fullUrl = "Observation/CD4PercentageExample"
* entry[=].resource = CD4PercentageExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CD4PercentageExample"

* entry[+].fullUrl = "Observation/CD4TestResultExample"
* entry[=].resource = CD4TestResultExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Observation/CD4TestResultExample"

* entry[+].fullUrl = "CarePlan/ARVTreatmentRegimenSwitchedOrSubstitutedExample"
* entry[=].resource = ARVTreatmentRegimenSwitchedOrSubstitutedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "CarePlan/ARVTreatmentRegimenSwitchedOrSubstitutedExample"

* entry[+].fullUrl = "MedicationRequest/HIVCareMedicationRequestExample"
* entry[=].resource = HIVCareMedicationRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "MedicationRequest/HIVCareMedicationRequestExample"

* entry[+].fullUrl = "ServiceRequest/TransferredOutServiceRequestExample"
* entry[=].resource = TransferredOutServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/TransferredOutServiceRequestExample"

* entry[+].fullUrl = "Organization/HIVOrganizationPatientTransferredToExample"
* entry[=].resource = HIVOrganizationPatientTransferredToExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Organization/HIVOrganizationPatientTransferredToExample"