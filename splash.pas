unit splash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, ComCtrls;

type

  { Tsplashform }

  Tsplashform = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  splashform: Tsplashform;

implementation

initialization
  {$I splash.lrs}

end.

