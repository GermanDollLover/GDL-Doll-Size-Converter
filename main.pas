// ****************************************************************************
// * mxPlugin for Delphi
// ****************************************************************************
// * Copyright 2001-2002, Bitvadász Kft. All Rights Reserved.
// ****************************************************************************
// * This component can be freely used and distributed in commercial and
// * private environments, provied this notice is not modified in any way.
// ****************************************************************************
// * Feel free to contact me if you have any questions, comments or suggestions
// * at support@maxcomponents.net
// ****************************************************************************
// * I would like to say a big thanks to Marco Cantu for his fantastic books
// * and to Dr.Bob for his Website (www.drbob42.com).
// * They helped me to create this component. Thanks....
// ****************************************************************************
// * Important note about DLL memory management: ShareMem must be the
// * first unit in your library's USES clause AND your project's (select
// * View-Project Source) USES clause if your DLL exports any procedures or
// * functions that pass strings as parameters or function results. This
// * applies to all strings passed to and from your DLL--even those that
// * are nested in records and classes. ShareMem is the interface unit to
// * the DELPHIMM.DLL shared memory manager, which must be deployed along
// * with your DLL. To avoid using DELPHIMM.DLL, pass string information
// * using PChar or ShortString parameters.
// ****************************************************************************

// * Please note that, if you change the name of this plugin from TmxPlugin1
// * you also need to change it manually in Function mxPlugInRegistration
// ****************************************************************************

Unit main;

Interface

Uses
     Windows,
     SysUtils,
     Classes,
     Forms,
     mxPlugin;

Type
  TAddOn = Class( TmxPlugin )
    procedure AddOnPluginActions0Action(Sender: TObject);
     Private
     { Private declarations }
     Public
     { Public declarations }
  End;

// ****************************************************************************
// ** WARNING: Never modify the next function's name
// ****************************************************************************

Function mxPlugInRegistration : TAddOn; stdcall;

Implementation

uses mainfrm;

{$R *.DFM}

// ****************************************************************************
// ** WARNING: Never modify the next function's name
// ****************************************************************************

Function mxPlugInRegistration; // ** The result type is not need here **
Begin
  Result :=  TAddOn.Create( Nil );
End;

procedure TAddOn.AddOnPluginActions0Action(Sender: TObject);
var
  form: TMainForm;
begin
  form:=TMainForm.create(application);
  form.showModal;
  form.update;
end;

End.
