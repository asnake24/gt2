unit DR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd, Data.DB,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.WinXCalendars;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit12: TEdit;
    Edit14: TEdit;
    FDConnection1: TFDConnection;
    DR_query: TADOQuery;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    CalendarPicker1: TCalendarPicker;
    procedure Button1Click(Sender: TObject);

   private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;
  cp1 : string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
cp1:=CalendarPicker1.ToString;


DR_query.Close;
DR_query.SQL.Clear;
DR_query.SQL.Add('insert into Demande_de_reparation(Date,[nbr.O.rest],N_BR) VALUES ('''+cp1+''',''88'',''88'') ');
DR_query.ExecSQL;
DR_query.close;

end;

begin

end.
