unit bull_and_cow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
maxmot=10;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Esaisie: TEdit;
    Ebull: TEdit;
    Ecow: TEdit;
    Bcheck: TButton;
    Braz: TButton;
    Bquit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mot: TEdit;
    casevie: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BquitClick(Sender: TObject);
    procedure BrazClick(Sender: TObject);
    procedure BcheckClick(Sender: TObject);
    procedure motChange(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  nbbull:integer;
  nbcow:integer;
  nbvie:integer;
  saisiemot,motjuste:string;
  implementation

{$R *.dfm}
procedure vie(motjuste:string; var nbvie:integer); //vie donner en fonction des lettres du mot
begin
case length(motjuste) of
3: nbvie:=4;
4: nbvie:=7;
5: nbvie:=10;
6: nbvie:=16;
7: nbvie:=20;

end;
end;
procedure verife(var nbbull:integer; var nbcow:integer; saisiemot,motjuste:string);
var
i,j:integer;
testlettre:boolean;
testbull:boolean;
begin
nbbull:=0;
nbcow:=0;

for i:=1 to length(saisiemot)  do
  begin
  for j := 1 to length(motjuste) do
    begin
     testlettre:=False;
     testbull:=false;
    if (copy(saisiemot,i,1)=copy(motjuste,j,1))  then
      begin
        testlettre:=true;
      end;
    if (testlettre=true) and(i=j) then
    begin
    nbbull:=nbbull+1;
    testbull:=true;
    end;
    if (testlettre=true) and (testbull=false) then
      nbcow:=nbcow+1;

    end;
   end;
end;

procedure TForm1.BcheckClick(Sender: TObject);
begin
//permet de bloqué en miniscule
saisiemot:=lowercase(Esaisie.Text);
verife(nbbull,nbcow,saisiemot,motjuste);
Ebull.Text:=inttostr(nbbull);
Ecow.Text:=inttostr(nbcow);
if Esaisie.Text=mot.Text then
showmessage('bravo vous avez gagner')
else
  begin
    nbvie:=nbvie-1;
    casevie.Text:=inttostr(nbvie);
  end;
  if nbvie=0 then
  showmessage('LOOSER tu as perdu');
end;

procedure TForm1.BquitClick(Sender: TObject);
begin
close;
end;

procedure TForm1.BrazClick(Sender: TObject);
begin
form1.Esaisie.Text:=' ';
form1.Ebull.Text:= ' ';
form1.Ecow.Text:=' ';

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

memo1.lines.loadfromfile('C:\Users\william weiler\Desktop\cours\Devoir_15_05_2017\liste_mot.txt');
motjuste:=memo1.Lines[random(maxmot+1)];
mot.Text:=motjuste;
vie(motjuste,nbvie);
casevie.Text:=inttostr(nbvie);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
memo1.visible:=false;
end;

procedure TForm1.motChange(Sender: TObject);
begin
mot.visible:=false;
end;

end.
