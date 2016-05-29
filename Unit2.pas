unit Unit2;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, MyObject_TLB, StdVcl;

type
  TMyCom = class(TTypedComObject, IMyCom)
  protected
    function raschet(a, b, c, x: Single): Single; stdcall;
  end;

implementation

uses ComServ;

function TMyCom.raschet(a, b, c, x: Single): Single;
begin
  Result:=a*sqr(x)+b*x+c;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TMyCom, Class_MyCom,
    ciMultiInstance, tmApartment);
end.
