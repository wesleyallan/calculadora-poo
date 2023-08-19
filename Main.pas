unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Calculator, Interfaces;

type
  TCalculatorForm = class(TForm)
    EdtVal1: TEdit;
    EdtVal2: TEdit;
    EdtResult: TEdit;
    BtSoma: TButton;
    BtSubt: TButton;
    BtMult: TButton;
    BtDiv: TButton;
    procedure BtSomaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtSubtClick(Sender: TObject);
    procedure BtDivClick(Sender: TObject);
    procedure BtMultClick(Sender: TObject);
  private
    { Private declarations }
    FCalculator: ICalculator;
    procedure ShowResult(Value : string);
  public
    { Public declarations }
    property Calculator : ICalculator read FCalculator write FCalculator;
  end;

var
  CalculatorForm: TCalculatorForm;

implementation

{$R *.dfm}

procedure TCalculatorForm.BtDivClick(Sender: TObject);
begin
  Calculator.Add(EdtVal1.Text).Add(EdtVal2.Text).Division.Run;
end;

procedure TCalculatorForm.BtMultClick(Sender: TObject);
begin
  Calculator.Add(EdtVal1.Text).Add(EdtVal2.Text).Multiplication.Run;
end;

procedure TCalculatorForm.BtSomaClick(Sender: TObject);
begin
  Calculator.Add(EdtVal1.Text).Add(EdtVal2.Text).Sum.Run;
end;

procedure TCalculatorForm.BtSubtClick(Sender: TObject);
begin
  Calculator.Add(EdtVal1.Text).Add(EdtVal2.Text).Subtraction.Run;
end;

procedure TCalculatorForm.FormCreate(Sender: TObject);
begin
  Calculator := TCalculator.New.Display.Result(ShowResult).EndDisplay;
end;

procedure TCalculatorForm.ShowResult(Value: string);
begin
  EdtResult.Text := Value;
end;

end.
