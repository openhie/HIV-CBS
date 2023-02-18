Instance: LabOrder
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Order Bundle Example"
Description: "HIV Submit Lab Order Bundle Example"
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderTaskExample"
* entry[=].resource = HIVLabOrderTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderTaskExample"

* entry[+].fullUrl = "Location/HIVServiceRequestLocationExample"
* entry[=].resource = HIVServiceRequestLocationExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Location/HIVServiceRequestLocationExample"

* entry[+].fullUrl = "ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample
* entry[=].request.method = #PUT
* entry[=].request.url = "ServiceRequest/HIVServiceRequestExample"

* entry[+].fullUrl = "Practitioner/PractitionerExample"
* entry[=].resource = PractitionerExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Practitioner/PractitionerExample"

* entry[+].fullUrl = "Specimen/VLSpecimenExample"
* entry[=].resource = VLSpecimenExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/VLSpecimenExample"