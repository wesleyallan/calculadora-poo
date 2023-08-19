unit Classe.Multiplication;

interface

  uses
    System.SysUtils, Classe.Operation, Interfaces, System.Generics.Collections;

  type
    TMultiplication = class(TOperation)
      function Run : string; override;
      constructor Create(var values : TList<double>);
      destructor Destroy; override;
      class function New(var Values : TList<double>) : IOperation;
    end;

implementation

{ TMultiplication }

constructor TMultiplication.Create(var values: TList<double>);
begin
  FList := Values;
end;

destructor TMultiplication.Destroy;
begin
  inherited;
end;

class function TMultiplication.New(var Values: TList<double>): IOperation;
begin
  Result := Self.Create(Values);
end;

function TMultiplication.Run: string;
var
  I : integer;
  Initial : double;
begin
  Initial := FList[0];
  for I := 1 to FList.Count - 1 do
    Result := (Initial * FList[i]).ToString;

  DisplayTotal(Result);
  inherited;
end;

end.
