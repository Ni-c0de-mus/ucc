unit vgasw;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, FileUtil, LResources, Forms, Controls, Graphics,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type

  { Tvgaswform }

  Tvgaswform = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Image21: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Process1: TProcess;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  vgaswform: Tvgaswform;
  highgpu: TProcess;
  lowgpu: TProcess;
  checkgpu:TProcess;
  mvga:TProcess;
  AStringList: TStringList;

implementation

{ Tvgaswform }

procedure Tvgaswform.BitBtn2Click(Sender: TObject);
begin
  highgpu := TProcess.Create(nil);
  highgpu.CommandLine := 'gksu sh /opt/ucc/highgpu.sh';
  highgpu.Execute;
 //Countdown
 sleep(9000);
 //Kill gnome session
 highgpu:= TProcess.Create(nil);
 highgpu.CommandLine := 'gnome-session-save --logout';
 highgpu.Execute;

end;

procedure Tvgaswform.BitBtn3Click(Sender: TObject);
begin
 //Check actual state
 checkgpu:= TProcess.Create(nil);
 checkgpu.CommandLine := 'gksu /opt/ucc/check_vga.sh';
 checkgpu.Execute;
 memo1.lines.loadfromfile('/opt/ucc/vga.txt');
end;

procedure Tvgaswform.FormShow(Sender: TObject);
begin
  //Check actual state
 checkgpu:= TProcess.Create(nil);
 checkgpu.CommandLine := 'gksu /opt/ucc/check_vga.sh';
 checkgpu.Execute;


 memo1.lines.loadfromfile('/opt/ucc/vga.txt');
end;

procedure Tvgaswform.BitBtn1Click(Sender: TObject);
begin
  lowgpu := TProcess.Create(nil);
  lowgpu.CommandLine := 'gksu sh /opt/ucc/lowgpu.sh';
  lowgpu.Execute;
  //Countdown
   sleep(9000);
  //Kill gnome session
  lowgpu:= TProcess.Create(nil);
  lowgpu.CommandLine := 'gnome-session-save --logout';
  lowgpu.Execute;
end;

initialization
  {$I vgasw.lrs}

end.

