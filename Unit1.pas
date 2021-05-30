unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,Unit2,Unit3 ;

type
  TGiris = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    USR: TEdit;
    PASS: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Giris: TGiris;

implementation

{$R *.dfm}



procedure TGiris.BitBtn1Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select * from [user] where usr_name='''+USR.Text+'''and pass='''+PASS.TEXT+''' ');
 ADOQuery1.Open;
 if ADOQuery1.eof then
 begin
  label1.Caption:='MERHABA';
  Form3.Show;
  giris.Visible := false;
 end
 else
  label1.Visible:=false;

end;

procedure TGiris.BitBtn2Click(Sender: TObject);
begin
Form2.Show;
end;

end.
