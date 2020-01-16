unit about;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls,LCLProc, LazHelpHTML, UTF8Process;

type

  { Taboutform }

  Taboutform = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  aboutform: Taboutform;

implementation
uses ucc;
{ Taboutform }



procedure Taboutform.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  uccform.image22.visible:=false;
  uccform.image23.visible:=false;
end;

procedure Taboutform.Image1Click(Sender: TObject);

   var
  v: THTMLBrowserHelpViewer;
  BrowserPath, BrowserParams: string;
  p: LongInt;
  URL: String;
  BrowserProcess: TProcessUTF8;
begin
  v:=THTMLBrowserHelpViewer.Create(nil);
  try
    v.FindDefaultBrowser(BrowserPath,BrowserParams);
    debugln(['Path=',BrowserPath,' Params=',BrowserParams]);

    URL:='http://www.ubuntudicas.com.br';
    p:=System.Pos('%s', BrowserParams);
    System.Delete(BrowserParams,p,2);
    System.Insert(URL,BrowserParams,p);

    // start browser
    BrowserProcess:=TProcessUTF8.Create(nil);
    try
      BrowserProcess.CommandLine:=BrowserPath+' '+BrowserParams;
      BrowserProcess.Execute;
    finally
      BrowserProcess.Free;
    end;
  finally
    v.Free;
  end;
end;

procedure Taboutform.Image2Click(Sender: TObject);

  var
  v: THTMLBrowserHelpViewer;
  BrowserPath, BrowserParams: string;
  p: LongInt;
  URL: String;
  BrowserProcess: TProcessUTF8;
begin
  v:=THTMLBrowserHelpViewer.Create(nil);
  try
    v.FindDefaultBrowser(BrowserPath,BrowserParams);
    debugln(['Path=',BrowserPath,' Params=',BrowserParams]);

    URL:='http://www.webupd8.org';
    p:=System.Pos('%s', BrowserParams);
    System.Delete(BrowserParams,p,2);
    System.Insert(URL,BrowserParams,p);

    // start browser
    BrowserProcess:=TProcessUTF8.Create(nil);
    try
      BrowserProcess.CommandLine:=BrowserPath+' '+BrowserParams;
      BrowserProcess.Execute;
    finally
      BrowserProcess.Free;
    end;
  finally
    v.Free;
  end;
end;

procedure Taboutform.Image3Click(Sender: TObject);

  var
  v: THTMLBrowserHelpViewer;
  BrowserPath, BrowserParams: string;
  p: LongInt;
  URL: String;
  BrowserProcess: TProcessUTF8;
begin
  v:=THTMLBrowserHelpViewer.Create(nil);
  try
    v.FindDefaultBrowser(BrowserPath,BrowserParams);
    debugln(['Path=',BrowserPath,' Params=',BrowserParams]);

    URL:='http://www.cticmg.com.br';
    p:=System.Pos('%s', BrowserParams);
    System.Delete(BrowserParams,p,2);
    System.Insert(URL,BrowserParams,p);

    // start browser
    BrowserProcess:=TProcessUTF8.Create(nil);
    try
      BrowserProcess.CommandLine:=BrowserPath+' '+BrowserParams;
      BrowserProcess.Execute;
    finally
      BrowserProcess.Free;
    end;
  finally
    v.Free;
  end;
end;




initialization
  {$I about.lrs}

end.

