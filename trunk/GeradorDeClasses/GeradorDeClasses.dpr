program GeradorDeClasses;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_GeradorDeClasses};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gerador de classes Java';
  Application.CreateForm(TF_GeradorDeClasses, F_GeradorDeClasses);
  Application.Run;
end.
