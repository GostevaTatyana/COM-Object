unit MyObject_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 28.05.2016 17:57:17 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\MyCom\Project2 (1)
// LIBID: {EE089372-8E49-422E-AC58-9846C70A5F45}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MyObjectMajorVersion = 1;
  MyObjectMinorVersion = 0;

  LIBID_MyObject: TGUID = '{EE089372-8E49-422E-AC58-9846C70A5F45}';

  IID_IMyCom: TGUID = '{D547C9E4-DABC-41F3-A630-EDE7351F3009}';
  CLASS_MyCom: TGUID = '{46EC7442-F73B-4525-94DC-51D33900757C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IMyCom = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  MyCom = IMyCom;


// *********************************************************************//
// Interface: IMyCom
// Flags:     (0)
// GUID:      {D547C9E4-DABC-41F3-A630-EDE7351F3009}
// *********************************************************************//
  IMyCom = interface(IUnknown)
    ['{D547C9E4-DABC-41F3-A630-EDE7351F3009}']
    function raschet(a: Single; b: Single; c: Single; x: Single): Single; stdcall;
  end;

// *********************************************************************//
// The Class CoMyCom provides a Create and CreateRemote method to
// create instances of the default interface IMyCom exposed by
// the CoClass MyCom. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMyCom = class
    class function Create: IMyCom;
    class function CreateRemote(const MachineName: string): IMyCom;
  end;

implementation

uses System.Win.ComObj;

class function CoMyCom.Create: IMyCom;
begin
  Result := CreateComObject(CLASS_MyCom) as IMyCom;
end;

class function CoMyCom.CreateRemote(const MachineName: string): IMyCom;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MyCom) as IMyCom;
end;

end.

