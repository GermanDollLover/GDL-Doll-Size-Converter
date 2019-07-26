unit mainfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvAppStyler, AdvPanel, ExtCtrls, StdCtrls, Mask, JvExMask,
  JvSpin, AdvGlowButton;

type
  TMainForm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvAppStyler1: TAdvAppStyler;
    Label1: TLabel;
    ConType: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Value: TJvSpinEdit;
    Result: TEdit;
    Bevel1: TBevel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure ConTypeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.ConTypeChange(Sender: TObject);
begin
  if ConType.ItemIndex = 0 then
  begin
    Label2.Caption:='Value in cm:';
    Label3.Caption:='Value in inch:';
  end
  else
  begin
    Label2.Caption:='Value in inch:';
    Label3.Caption:='Value in cm:';
  end;
  Value.Value:=0.00;
  Result.Text:='0,00';
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMainForm.AdvGlowButton1Click(Sender: TObject);
begin
  if ConType.ItemIndex = 0 then
  begin
    Result.Text:=Format('%.2f',[value.Value / 2.54]);
  end
  else
  begin
    Result.Text:=Format('%.2f',[value.Value * 2.54]);
  end;
end;

procedure TMainForm.AdvGlowButton2Click(Sender: TObject);
var
  msg: String;
begin
  msg:='Doll Size Converter V1.0'+#10+
       'Programmed by Andreas Hiller'+#10+
       'Copyright © 2019 GermanDollLover'+#10+
       'All rights reserved'+#13+#10+
       'Visit me at: https://www.germandolllover.com';
  MessageDlg(msg,mtInformation,[mbOK],0);
end;

procedure TMainForm.AdvGlowButton3Click(Sender: TObject);
begin
  close;
end;

end.
