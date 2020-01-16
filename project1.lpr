program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, ucc, LResources, about, splash, sysutils, vgasw, myppa
  { you can add units after this };

{$IFDEF WINDOWS}{$R project1.rc}{$ENDIF}

begin



  {$I project1.lrs}
  Application.Initialize;

  Application.CreateForm(Tuccform, uccform);
  Application.CreateForm(Taboutform, aboutform);
  Application.CreateForm(Tvgaswform, vgaswform);
  Application.CreateForm(Tmyppafrm, myppafrm);
  Application.Run;
end.

