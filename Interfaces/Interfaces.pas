unit Interfaces;

interface
  uses
    Events;

  type
    ICalculatorDisplay = interface;
    IOperationDisplay = interface;

    IOperation = interface
      ['{4B8D03AF-2A44-480F-B5D7-7004EF2C82DB}']
      function Run : string;
      function Display : IOperationDisplay;
    end;

    IOperationDisplay = interface
      ['{A1573DE2-B634-44FC-8AD0-A07D8C51A1E7}']
      function Result(Value : TEventDisplayTotal) : IOperationDisplay;
      function EndDisplay : IOperation;
    end;

    ICalculator = interface
      ['{63384A9E-508A-4FC0-9AEB-5A4610BBD3CA}']
      function Add(Value : string) : ICalculator; overload;
      function Add(Value : integer) : ICalculator; overload;
      function Add(Value : currency) : ICalculator; overload;
      function Sum : IOperation;
      function Subtraction : IOperation;
      function Division : IOperation;
      function Multiplication : IOperation;
      function Display : ICalculatorDisplay;
    end;

    ICalculatorDisplay = interface
      ['{E76D10B3-0B18-45E0-966E-D6E1EE918D76}']
      function Result(Value : TEventDisplayTotal) : ICalculatorDisplay;
      function EndDisplay : ICalculator;
    end;
implementation

end.
