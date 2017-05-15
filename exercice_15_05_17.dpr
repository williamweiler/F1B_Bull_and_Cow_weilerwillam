program exercice_15_05_17;

uses
  Vcl.Forms,
  bull_and_cow in '..\..\..\Documents\Embarcadero\Studio\Projets\bull_and_cow.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
