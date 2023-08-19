program Calculadora;

uses
  Vcl.Forms,
  Main in 'Main.pas' {CalculatorForm},
  Interfaces in 'Interfaces\Interfaces.pas',
  Classe.Operation in 'Class\Classe.Operation.pas',
  Classe.Sum in 'Class\Classe.Sum.pas',
  Classe.Calculator in 'Class\Classe.Calculator.pas',
  Events in 'Events\Events.pas',
  Classe.Subtraction in 'Class\Classe.Subtraction.pas',
  Classe.Division in 'Class\Classe.Division.pas',
  Classe.Multiplication in 'Class\Classe.Multiplication.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCalculatorForm, CalculatorForm);
  Application.Run;
end.
