unit Classe.Operation;

interface
  uses
    Interfaces, System.Generics.Collections, Events;

  type
    TOperation = class(TInterfacedObject, IOperation, IOperationDisplay)
      protected
        FList : TList<Double>;
        FEventDisplayTotal : TEventDisplayTotal;
        procedure DisplayTotal(Value : string);
      public
        function Run : string; virtual;
        function Display : IOperationDisplay;
        function Result(Value : TEventDisplayTotal) : IOperationDisplay;
        function EndDisplay : IOperation;
    end;

implementation

{ TOperacao }

function TOperation.Display: IOperationDisplay;
begin
 Result := Self;
end;

procedure TOperation.DisplayTotal(Value: string);
begin
 if Assigned(FEventDisplayTotal) then
  FEventDisplayTotal(Value);
end;

function TOperation.EndDisplay: IOperation;
begin
  Result := Self;
end;

function TOperation.Result(Value: TEventDisplayTotal): IOperationDisplay;
begin
  FEventDisplayTotal := Value;
  Result := Self;
end;

function TOperation.Run: string;
begin
  FList.clear;
end;

end.
