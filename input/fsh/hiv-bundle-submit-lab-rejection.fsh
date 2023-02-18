Instance: LabRejection
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Rejection Bundle Example"
Description: "HIV Submit Lab Rejection Bundle Example"
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderRejectionTaskExample"
* entry[=].resource = HIVLabOrderRejectionTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderRejectionTaskExample"