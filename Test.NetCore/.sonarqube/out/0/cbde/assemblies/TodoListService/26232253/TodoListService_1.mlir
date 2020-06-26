func @_TodoListService.TodoListService.CreateServiceReplicaListeners$$() -> none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\TodoListService.cs" :35 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = constant 0 : i32 loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\TodoListService.cs" :37 :46)
%1 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\TodoListService.cs" :37 :23) // ServiceReplicaListener[0] (ArrayType)
%2 = cbde.unknown : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\TodoListService.cs" :37 :19) // new ServiceReplicaListener[0] (ArrayCreationExpression)
return %2 : none loc("C:\\Users\\irosales\\source\\repos\\Test.NetCore\\ApiServices\\TodoListService\\TodoListService.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function RunAsync(none), it contains poisonous unsupported syntaxes

