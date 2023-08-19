unit Classe.Subtraction;

interface
  uses
    Interfaces, Classe.Operation, System.Generics.Collections, System.SysUtils;

  type
    TSubtraction = class sealed (TOperation)
      function Run : string; override;
      constructor Create(var Values : TList<double>);
      destructor Destroy; override;
      class function New(var Values : TList<double>) : IOperation;
    end;

implementation

{ TSubtraction }

constructor TSubtraction.Create(var Values : TList<double>);
begin
  FList := Values;
end;

destructor TSubtraction.Destroy;
begin
  inherited;
end;

class function TSubtraction.New(var Values : TList<double>) : IOperation;
begin
  Result := Self.Create(Values);
end;

function TSubtraction.Run: string;
var
  I : integer;
  Initial : double;
begin
  Initial := FList[0];
  for I := 1 to FList.Count - 1 do
    Result := (Initial - FList[i]).ToString;

  DisplayTotal(Result);
  inherited
end;

end.
