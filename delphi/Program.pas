program DelphiHayaletSevgilim;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  HayaletSevgilimUnit;

var
  Lyrics: THayaletSevgilim;
  Line: string;
begin
  Lyrics := THayaletSevgilim.Create;
  try
    for Line in Lyrics.GetLines do
      Writeln(Line);
  finally
    Lyrics.Free;
  end;

  Readln;
end.
