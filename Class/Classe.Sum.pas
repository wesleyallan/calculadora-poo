unit Classe.Sum;

interface
  uses
    Classe.Operation, Interfaces, System.Generics.Collections, System.SysUtils;

  type
    TSum = class sealed (TOperation)
      function Run : string; override;
      constructor Create(var Values : TList<double>);
      destructor Destroy; override;
      class function New(var Values : TList<double>) : IOperation;
    end;

implementation

{ TSum }

constructor TSum.Create(var Values : TList<double>);
begin
  FList := Values;
end;

destructor TSum.Destroy;
begin
  inherited;
end;

class function TSum.New(var Values : TList<double>) : IOperation;
begin
  Result := Self.Create(Values);
end;

function TSum.Run: string;
var
  I: Integer;
begin
  Result := FList[0].ToString;
  for I := 1 to FList.Count - 1  do
    Result := (Result.ToDouble + FList[I]).ToString;

  DisplayTotal(Result);
  inherited;
end;

end.
