unit Classe.Division;

interface

  uses
    System.SysUtils, Classe.Operation, Interfaces, System.Generics.Collections;

  type
    TDivision = class(TOperation)
      function Run : string; override;
      constructor Create(var Values : TList<double>);
      destructor Destroy; override;
      class function New(var Values : TList<double>) : IOperation;
    end;

implementation

{ TDivision }

constructor TDivision.Create(var Values : TList<double>);
begin
  FList := Values;
end;

destructor TDivision.Destroy;
begin
  inherited;
end;

class function TDivision.New(var Values : TList<double>) : IOperation;
begin
  Result := Self.Create(Values);
end;

function TDivision.Run: string;
var
  I : integer;
  Initial : double;
begin
  Initial := FList[0];
  for I := 1 to FList.Count - 1 do
    Result := (Initial / Flist[i]).ToString;

  DisplayTotal(Result);
  inherited;
end;

end.
