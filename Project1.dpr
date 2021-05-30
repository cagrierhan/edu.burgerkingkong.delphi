program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Giris},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Kullanicilar},
  Unit5 in 'Unit5.pas' {Siparisler},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGiris, Giris);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TKullanicilar, Kullanicilar);
  Application.CreateForm(TSiparisler, Siparisler);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
