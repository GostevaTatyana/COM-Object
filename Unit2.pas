unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MyObject_TLB, comobj;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var com:IMyCom;
    xn,xk,dx,y,a,b,c,x:Extended;
    i,n:Integer;
begin
a:=StrToFloat(Edit1.Text);
b:=StrToFloat(Edit2.Text);
c:=StrToFloat(Edit3.Text);
xn:=StrToFloat(Edit4.Text);
xk:=StrToFloat(Edit5.Text);
n:=StrToInt(Edit6.Text);
dx:=(xk-xn)/n;
x:=xn;
com := CreateComObject(CLASS_MyCom) as IMyCom;
for I := 0 to n-1 do
  begin
    y:=com.raschet(a,b,c,x);
    ListBox1.Items.Add(FloatToStr(y));
    x:=x+dx;
  end;
end;

end.
