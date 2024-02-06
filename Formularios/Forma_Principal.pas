unit Forma_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, ShellAPI;

type
  TFormaPantalla = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Inventario: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LS: TMemo;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    Button5: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormaPantalla: TFormaPantalla;

implementation

{$R *.dfm}

procedure TFormaPantalla.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormaPantalla.Button2Click(Sender: TObject);
begin
 try
    ShellExecute(FormaPantalla.Handle, nil, PChar('C:\Users\CUATE\Desktop\TEC\Semestre 6\Lenguajes de Interfaz\U4\ProyectoHibrido_09_5B\ProyectoEnsamblador\Safe Collecting.asm'),nil,nil, SW_SHOWNORMAL);
  except
    showMessage('Error al abrir la aplicacion. Contacte al administrador...')
  end;
end;

procedure TFormaPantalla.Button3Click(Sender: TObject);
begin
 if fileexists('C:\emu8086\vdrive\C\Refugio\Inventario.txt') then
    begin
      Inventario.Lines.LoadFromFile('C:\emu8086\vdrive\C\Refugio\Inventario.txt');
    end
  else
    begin
      showMessage('Por el momento no hay datos...')
    end;
end;

procedure TFormaPantalla.Button5Click(Sender: TObject);
begin
if fileexists('C:\emu8086\vdrive\C\Refugio\LugaresSeguros.txt') then
    begin
      LS.Lines.LoadFromFile('C:\emu8086\vdrive\C\Refugio\LugaresSeguros.txt');
    end
  else
    begin
      showMessage('Por el momento no hay datos...')
    end;
end;

end.
