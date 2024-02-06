program ProyectoHibrido;

uses
  Vcl.Forms,
  Forma_Principal in 'Formularios\Forma_Principal.pas' {FormaPantalla};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormaPantalla, FormaPantalla);
  Application.Run;
end.
