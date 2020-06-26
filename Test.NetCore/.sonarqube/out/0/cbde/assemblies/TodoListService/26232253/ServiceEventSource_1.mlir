func @_TodoListService.ServiceEventSource.Message$string.paramsobject$$$(none, none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :41 :8) {
^entry (%_message : none, %_args : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :42 :28)
cbde.store %_message, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :42 :28)
%1 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :42 :44)
cbde.store %_args, %1 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :42 :44)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :44 :16) // this (ThisExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :44 :16) // this.IsEnabled() (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :44 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :46 :38) // string (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :46 :52) // Not a variable of known type: message
%6 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :46 :61) // Not a variable of known type: args
%7 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :46 :38) // string.Format(message, args) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Message
%9 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :47 :24) // Not a variable of known type: finalMessage
%10 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :47 :16) // Message(finalMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.Message$string$(none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :51 :8) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :52 :28)
cbde.store %_message, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :52 :28)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :54 :16) // this (ThisExpression)
%2 = cbde.unknown : i1 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :54 :16) // this.IsEnabled() (InvocationExpression)
cond_br %2, ^1, ^2 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :54 :16)

^1: // SimpleBlock
// Entity from another assembly: WriteEvent
%3 = constant 1 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :56 :27)
%4 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :56 :43) // Not a variable of known type: message
%5 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :56 :16) // WriteEvent(MessageEventId, message) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceMessage$System.Fabric.StatefulServiceContext.string.paramsobject$$$(none, none, none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :60 :8) {
^entry (%_serviceContext : none, %_message : none, %_args : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :35)
cbde.store %_serviceContext, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :35)
%1 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :74)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :74)
%2 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :90)
cbde.store %_args, %2 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :61 :90)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :63 :16) // this (ThisExpression)
%4 = cbde.unknown : i1 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :63 :16) // this.IsEnabled() (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :63 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :65 :38) // string (PredefinedType)
%6 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :65 :52) // Not a variable of known type: message
%7 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :65 :61) // Not a variable of known type: args
%8 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :65 :38) // string.Format(message, args) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ServiceMessage
%10 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :67 :20) // Not a variable of known type: serviceContext
%11 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :67 :20) // serviceContext.ServiceName (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :67 :20) // serviceContext.ServiceName.ToString() (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :68 :20) // Not a variable of known type: serviceContext
%14 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :68 :20) // serviceContext.ServiceTypeName (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :69 :20) // Not a variable of known type: serviceContext
%16 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :69 :20) // serviceContext.ReplicaId (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :70 :20) // Not a variable of known type: serviceContext
%18 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :70 :20) // serviceContext.PartitionId (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :71 :20) // Not a variable of known type: serviceContext
%20 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :71 :20) // serviceContext.CodePackageActivationContext (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :71 :20) // serviceContext.CodePackageActivationContext.ApplicationName (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :72 :20) // Not a variable of known type: serviceContext
%23 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :72 :20) // serviceContext.CodePackageActivationContext (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :72 :20) // serviceContext.CodePackageActivationContext.ApplicationTypeName (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :73 :20) // Not a variable of known type: serviceContext
%26 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :73 :20) // serviceContext.NodeContext (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :73 :20) // serviceContext.NodeContext.NodeName (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :74 :20) // Not a variable of known type: finalMessage
%29 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :66 :16) // ServiceMessage(                      serviceContext.ServiceName.ToString(),                      serviceContext.ServiceTypeName,                      serviceContext.ReplicaId,                      serviceContext.PartitionId,                      serviceContext.CodePackageActivationContext.ApplicationName,                      serviceContext.CodePackageActivationContext.ApplicationTypeName,                      serviceContext.NodeContext.NodeName,                      finalMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceMessage$string.string.long.System.Guid.string.string.string.string$(none, none, none, none, none, none, none, none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :82 :8) {
^entry (%_serviceName : none, %_serviceTypeName : none, %_replicaOrInstanceId : none, %_partitionId : none, %_applicationName : none, %_applicationTypeName : none, %_nodeName : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :89 :12)
cbde.store %_serviceName, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :89 :12)
%1 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :90 :12)
cbde.store %_serviceTypeName, %1 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :90 :12)
%2 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :91 :12)
cbde.store %_replicaOrInstanceId, %2 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :91 :12)
%3 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :92 :12)
cbde.store %_partitionId, %3 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :92 :12)
%4 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :93 :12)
cbde.store %_applicationName, %4 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :93 :12)
%5 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :94 :12)
cbde.store %_applicationTypeName, %5 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :94 :12)
%6 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :95 :12)
cbde.store %_nodeName, %6 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :95 :12)
%7 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :96 :12)
cbde.store %_message, %7 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :96 :12)
br ^0

^0: // SimpleBlock
// Entity from another assembly: WriteEvent
%8 = constant 2 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :23)
%9 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :46) // Not a variable of known type: serviceName
%10 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :59) // Not a variable of known type: serviceTypeName
%11 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :76) // Not a variable of known type: replicaOrInstanceId
%12 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :97) // Not a variable of known type: partitionId
%13 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :110) // Not a variable of known type: applicationName
%14 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :127) // Not a variable of known type: applicationTypeName
%15 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :148) // Not a variable of known type: nodeName
%16 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :158) // Not a variable of known type: message
%17 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :100 :12) // WriteEvent(ServiceMessageEventId, serviceName, serviceTypeName, replicaOrInstanceId, partitionId, applicationName, applicationTypeName, nodeName, message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceTypeRegistered$int.string$(i32, none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :121 :8) {
^entry (%_hostProcessId : i32, %_serviceType : none):
%0 = cbde.alloca i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :122 :42)
cbde.store %_hostProcessId, %0 : memref<i32> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :122 :42)
%1 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :122 :61)
cbde.store %_serviceType, %1 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :122 :61)
br ^0

^0: // SimpleBlock
// Entity from another assembly: WriteEvent
%2 = constant 3 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :124 :23)
%3 = cbde.load %0 : memref<i32> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :124 :53)
%4 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :124 :68) // Not a variable of known type: serviceType
%5 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :124 :12) // WriteEvent(ServiceTypeRegisteredEventId, hostProcessId, serviceType) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceHostInitializationFailed$string$(none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :128 :8) {
^entry (%_exception : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :129 :52)
cbde.store %_exception, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :129 :52)
br ^0

^0: // SimpleBlock
// Entity from another assembly: WriteEvent
%1 = constant 4 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :131 :23)
%2 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :131 :63) // Not a variable of known type: exception
%3 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :131 :12) // WriteEvent(ServiceHostInitializationFailedEventId, exception) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceRequestStart$string$(none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :138 :8) {
^entry (%_requestTypeName : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :139 :40)
cbde.store %_requestTypeName, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :139 :40)
br ^0

^0: // SimpleBlock
// Entity from another assembly: WriteEvent
%1 = constant 5 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :141 :23)
%2 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :141 :51) // Not a variable of known type: requestTypeName
%3 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :141 :12) // WriteEvent(ServiceRequestStartEventId, requestTypeName) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_TodoListService.ServiceEventSource.ServiceRequestStop$string.string$(none, none) -> () loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :145 :8) {
^entry (%_requestTypeName : none, %_exception : none):
%0 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :146 :39)
cbde.store %_requestTypeName, %0 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :146 :39)
%1 = cbde.alloca none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :146 :63)
cbde.store %_exception, %1 : memref<none> loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :146 :63)
br ^0

^0: // SimpleBlock
// Entity from another assembly: WriteEvent
%2 = constant 6 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :148 :23)
%3 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :148 :50) // Not a variable of known type: requestTypeName
%4 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :148 :67) // Not a variable of known type: exception
%5 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\ServiceEventSource.cs" :148 :12) // WriteEvent(ServiceRequestStopEventId, requestTypeName, exception) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
