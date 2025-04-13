unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Data.DB,
  Data.Win.ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1»ндексыЁлементов»сходногоћассива: TIntegerField;
    ADOTable1Ёлементы»сходногоћассива: TFloatField;
    ADOTable1»ндексыЁлентовЌовогоћассива: TIntegerField;
    ADOTable1ЁлементыЌовогоћассива: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

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
var
isc:array of real;
i,dimension: integer;
begin
randomize;
dimension := StrToInt(Edit1.Text); // размерность массива
SetLength(isc,dimension);
StringGrid1.RowCount:=dimension+1;
for i := 0 to dimension do  // формирование и вывод исходного  массива
begin
   isc[i]:= random*20-10;
   StringGrid1.Cells[0,i+1]:=IntToStr(i);
   StringGrid1.Cells[1,i+1]:=FloatToStr(isc[i]);
end;
end;
procedure TForm2.Button2Click(Sender: TObject);
var
nov, isc: array of real;
i,dimension,f: integer;
begin
ADOQuery1.Close;
ADOQuery1.SQL.Text := 'DELETE FROM [исходный_и_новый_массив]';
ADOQuery1.ExecSQL;
f:=1;
dimension := StrToInt(Edit1.Text);  // размерность массива
SetLength(isc, dimension);
SetLength(nov,dimension);
for i := 0 to dimension do
begin
   isc[i]:= StrToFloat(StringGrid1.Cells[1,i+1]);
   nov[i]:= StrToFloat(StringGrid1.Cells[1,i+1]);
   if (f mod 3 = 0)and (nov[i]<0) then
   begin                         // формирование
      nov[i]:= nov[i]*nov[i];    // нового
   end;                          // массива
   f:=f+1;
   ADOQuery1.Close;
   ADOQuery1.SQL.Text:='Insert INTO исходный_и_новый_массив Values (:p0, :p1, :p2, :p3)';
   ADOQuery1.Parameters[0].Value:=i;                 // сохранение
   ADOQuery1.Parameters[1].Value:=isc[i];            // нового и исходного
   ADOQuery1.Parameters[2].Value:=i;                 // массива
   ADOQuery1.Parameters[3].Value:=nov[i];            // в таблицу
   ADOQuery1.ExecSQL;
   StringGrid1.Cells[2,i+1] := FloatToStr(nov[i]);    // вывод нового массива
end;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
ADOTable1.Open;
StringGrid1.Cells[0,0]:='є';
StringGrid1.Cells[1,0]:='»сходный массив';
StringGrid1.Cells[2,0]:='Ќовый массив';
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
ADOTable1.Close;
end;
end.
