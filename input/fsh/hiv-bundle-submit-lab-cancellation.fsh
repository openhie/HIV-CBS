Instance: LabCancellation
InstanceOf: Bundle
Usage: #example
Title: "HIV Submit Lab Cancellation Bundle Example"
Description: "HIV Submit Lab Cancellation Bundle Example"
* type = #transaction
* entry[+].fullUrl = "Task/HIVLabOrderCancellationTaskExample"
* entry[=].resource = HIVLabOrderCancellationTaskExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/HIVLabOrderCancellationTaskExample"