unit myppa;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, FileUtil, LResources, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type

  { Tmyppafrm }

  Tmyppafrm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Image1: TImage;
    Image21: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Process1: TProcess;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  myppafrm: Tmyppafrm;
  ppakey: TProcess;
  ppabackup: TProcess;
  pparestore: TProcess;

implementation

{ Tmyppafrm }

procedure Tmyppafrm.BitBtn3Click(Sender: TObject);
begin
 ppakey := TProcess.Create(nil);
 ppakey.CommandLine := 'gksu xterm /opt/ucc/launchpad-update.sh';
 ppakey.Execute;
end;

procedure Tmyppafrm.BitBtn1Click(Sender: TObject);
begin
 ppabackup := TProcess.Create(nil);
 ppabackup.CommandLine := 'gksu /home/benjamim/ppa_backup.sh';
 ppabackup.Execute;
end;

initialization
  {$I myppa.lrs}

end.

