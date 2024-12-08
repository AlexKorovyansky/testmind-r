unit Unit6;

interface

uses
  Classes;

type
  Potok = class(TThread)
  private
    { Private declarations }
  protected
    procedure Updatehour;
    procedure updateprogress;
    procedure Execute; override;
  end;
var tdemo:potok;

implementation

uses unit1,sysutils;

procedure potok.Updatehour;
begin
form1.hour.Caption:=timetostr(time-strtotime(time_begin));
end;

procedure potok.updateprogress;
begin

end;

procedure Potok.Execute;
begin
repeat
Synchronize(Updatehour);
if (auto_otvet=true) and (pr_plus=true) then synchronize(updateprogress);
until false;
end;

end.
