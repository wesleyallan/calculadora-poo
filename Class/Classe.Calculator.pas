unit Classe.Calculator;

interface

uses
  Interfaces, System.Generics.Collections, Events, Classe.Subtraction,
  Classe.Division, Classe.Multiplication;

type
  TCalculator = class(TInterfacedObject, ICalculator, ICalculatorDisplay)
    private
      FList : TList<Double>;
      FEventDisplayTotal : TEventDisplayTotal;
    public
      function Add(Value : string) : ICalculator; overload;
      function Add(Value : integer) : ICalculator; overload;
      function Add(Value : currency) : ICalculator; overload;
      function Sum : IOperation;
      function Subtraction : IOperation;
      function Division : IOperation;
      function Multiplication : IOperation;
      function Display : ICalculatorDisplay;
      function Result(Value : TEventDisplayTotal) : ICalculatorDisplay;
      function EndDisplay : ICalculator;
      constructor Create;
      destructor Destroy; override;
      class function New : ICalculator;
  end;

implementation

uses
  System.SysUtils, Classe.Sum;

{ TCalculator }

function TCalculator.Add(Value: string): ICalculator;
begin
  FList.Add(Value.ToDouble);
  Result := Self;
end;

function TCalculator.Add(Value: Integer): ICalculator;
begin
  FList.Add(Value.ToDouble);
  Result := Self;
end;

function TCalculator.Add(Value: Currency): ICalculator;
begin
  FList.Add(Value);
  Result := Self;
end;

constructor TCalculator.Create;
begin
  FList := TList<Double>.Create;
end;

destructor TCalculator.Destroy;
begin
  FList.Free;
  inherited;
end;

function TCalculator.Display: ICalculatorDisplay;
begin
  Result := Self;
end;

function TCalculator.Division: IOperation;
begin
  Result := TDivision.New(FList).Display.Result(FEventDisplayTotal).EndDisplay;
end;

function TCalculator.EndDisplay: ICalculator;
begin
 Result := Self;
end;

function TCalculator.Multiplication: IOperation;
begin
  Result := TMultiplication.New(FList).Display.Result(FEventDisplayTotal).EndDisplay;
end;

class function TCalculator.New: ICalculator;
begin
  Result := Self.Create;
end;

function TCalculator.Result(Value: TEventDisplayTotal): ICalculatorDisplay;
begin
  FEventDisplayTotal := Value;
  Result := Self;
end;

function TCalculator.Subtraction: IOperation;
begin
  Result := TSubtraction.New(FList).Display.Result(FEventDisplayTotal).EndDisplay;
end;

function TCalculator.Sum: IOperation;
begin
  Result := TSum.New(FList).Display.Result(FEventDisplayTotal).EndDisplay;
end;

end.
