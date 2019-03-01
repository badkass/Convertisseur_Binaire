unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    RESET: TButton;
    Convertir: TButton;
    Convertir2: TButton;
    Binaire: TEdit;
    Hexadecimal: TEdit;
    Decimal: TEdit;
    fleche: TLabel;
    fleche2: TLabel;
    procedure Convertir2Click(Sender: TObject);
    procedure ConvertirClick(Sender: TObject);
    procedure RESETClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConvertirClick(Sender: TObject);

Var
  i, j, k, res, puissance : INTEGER;
begin
  res:=0;
  i:=7;
  puissance:=2;
  For j:=1  TO 8 DO
  begin
       For k:=1 TO i DO
       begin
            puissance:=puissance*2;
       end;
       res:= res+(strToInt(Binaire.Text[j])*puissance);
       i:=i-1;
       puissance:=2;
  end;
    Decimal.Text:= IntToStr(res DIV 2);
end;

procedure TForm1.RESETClick(Sender: TObject);
begin
  Binaire.Text:=('');
  Decimal.Text:=('');
  HexaDecimal.Text:=('');
end;

procedure TForm1.Convertir2Click(Sender: TObject);
var
  res: INTEGER;

begin
     res:=StrToInt(Decimal.Text);
     Hexadecimal.Text:=IntToHex(res,2);
end;


end.

