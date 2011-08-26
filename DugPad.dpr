program DugPad;

uses
  Forms,
  Windows,
  Principal in 'Principal.pas' {F_Principal},
  U_Calendario in 'U_Calendario.pas' {F_Calendario},
  U_InfoTexto in 'U_InfoTexto.pas' {F_InfoTexto},
  U_NovaTarefa in 'U_NovaTarefa.pas' {F_NovaTarefa},
  U_NovoAtalho in 'U_NovoAtalho.pas' {F_NovoAtalho},
  U_Sobre in 'U_Sobre.pas' {F_Sobre},
  U_TarefasAgendadas in 'U_TarefasAgendadas.pas' {F_TarefasAgendadas},
  U_Cores in 'U_Cores.pas' {F_Cores},
  U_Funcoes in 'U_Funcoes.pas',
  U_MensagemDeErro in 'U_MensagemDeErro.pas' {F_MensagemDeErro},
  U_Preview in 'U_Preview.pas' {F_Preview},
  U_ConfiguraImpressao in 'U_ConfiguraImpressao.pas' {F_ConfiguraImpressao};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DugPad 1.0';
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
