unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls ;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button22: TButton;
    Button23: TButton;
    Label2: TLabel;
    Button21: TButton;
    Label3: TLabel;
    Button24: TButton;
    A: TEdit;
    Button26: TButton;
    DrawGraph: TImage;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    OpenDialog1: TOpenDialog;
    Button30: TButton;
    Button31: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure AKeyPress(Sender: TObject; var Key: Char);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure DrawGraphClick(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

//uses Unit2;

{$R *.dfm}
const
  prs = '+-*/(';
  pri: array [1 .. 5] of byte = (1, 1, 2, 2, 0);

var
  s, s1, s2, s3: String;
  q: array of extended;
  w: array of Char;
  n, len, len2: int64;
  t: extended;
  ch: Char;
  b,q3,c1: boolean;
  k1: integer;


Function Count0 (s4:string):string; Forward;
Procedure PreCount(var s1:string; var g:boolean); Forward;

/////////////////////////////////////////////////////////////////calculations start
procedure DeleteSpaces(var a:string);
var p: integer;
Begin
    p := pos(' ',a);
   while p <> 0 do
     begin
        delete(a, p, 1);
        p := pos(' ', a);
     end;
End;

procedure vizual (var s: string );
var
i:integer;
begin
  if pos('.', s) <> 0 then
  begin
     i:=pos('.', s)-1;
      while i>3 do
      begin
        i:=i-3;
        insert(' ',s,i+1);
      end;
      {i:=length(s) - pos('.', s);
      while i>3 do
      begin
        i:=i-3;
        insert(' ',s,i+1+pos('.', s));
      end;  }
  end
  else
  if pos(',', s) <> 0 then
  begin
     i:=pos(',', s)-1;
      while i>3 do
      begin
        i:=i-3;
        insert(' ',s,i+1);
      end;
  end
  else
  begin
  i:=length(s);
   while i>3 do
      begin
        i:=i-3;
        insert(' ',s,i+1);
      end;
  end;
end;

////////////////////////////////////////////////////////////////////////////Cos
function MyCos(var x: Real): Real;
var
  Prev, Ch, Zn, Sign: Real;
  dPi, n: Integer;
begin
  dPi:= Trunc(x/pi);
  if Abs(dPi mod 2) = 1 then
    if x > 0 then
      x:= x - (dPi - 1) * pi
    else
      x:= x - (dPi - 1) * pi + 2 * pi
  else
    if x > 0 then
      x:= x - dPi * pi
    else
      x:= x - dPi * pi + 2 * pi;
  Sign:= 1;
  n:= 1;
  Result:= 0;
  Prev:= 1;
  Ch:= 1;
  Zn:= 1;
  while (Abs(Result - Prev) > 0.0000000000001) do
  begin
    Prev:= Result;
    Result:= Result + Sign * Ch / Zn;
    Sign:= -Sign;
    Ch:= Ch * x * x;
    Zn:= Zn * (n) * (n + 1);
    n:= n + 2;
  end;
end;

Procedure PreCos (var Str:string);
var s,s2,s3:string;
k,i,n,n1,n2,p,g,chisl,i2:integer;
k3,k2:real;
a:integer;
begin
p:=pos('Cos(',str);
If p<>0 then
while p<>0 do
Begin
str:=StringReplace(str, '.', ',', [rfReplaceAll, rfIgnoreCase]);
//p:=pos('Cos(',str); p:=p+4;
k:= length(Str);
s:=''; s2:='';
n:=0;
n1:=0;
n2:=0;
 for i := k downto 1 do
  begin
   if (str[i-4] ='C') and (str[i-3] ='o') and (str[i-2] ='s') and (str[i-1] ='(')then
     begin
         g:=i;
         while g<=k do
           begin
              if str[g] in (['1','2','3','4','5','6','7','8','9','0',',','-','+','*','/']) then  s2:=s2+str[g];
              if str[g+1] in [')'] then break else inc(g);
           end;

      delete(Str, i-4, length(s2) + 5);
      s2:= Count0(s2);
      k3:=  StrToFloat(s2);
      if (k3<0.001) and (k3>-0.001) then k2:=0 else k2:= MyCos(k3);
      if length(str)>0 then
      for i2:=0 to length(str) do
      begin
      if str[i2]='(' then inc(chisl);
      if str[i2]=')' then dec(chisl);
      end;
      if (length(str)>0) and (Str[length(str)]=')') and (chisl<0) then delete(Str,length(str),1); //and (ch<0) then delete(Str,length(str),1);
      s3:=FloatToStr(k2);
      Insert(s3, str, i-4);
     end;
    s2:='';
   end;
    p:=pos('Cos(',str);
End;
 str:=StringReplace(str, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;
//////////////////////////////////////////////////////////////////////////////  SIn
function MySin(var x: Real): Real;
var
  Prev, Ch, Zn, Sign: Real;
  dPi, n: Integer;
begin
  dPi:= Trunc(x/pi);
  if Abs(dPi mod 2) = 1 then
    if x > 0 then
      x:= x - (dPi - 1) * pi
    else
      x:= x - (dPi - 1) * pi + 2 * pi
  else
    if x > 0 then
      x:= x - dPi * pi
    else
      x:= x - dPi * pi + 2 * pi;
  Sign:= 1;
  n:= 1;
  Result:= 0;
  Prev:= 1;
  Ch:= x;
  Zn:= 1;
  while (Abs(Result - Prev) > 0.0000000000001) do
  begin
    Prev:= Result;
    Result:= Result + Sign * Ch / Zn;
    Sign:= -Sign;
    Ch:= Ch * x * x;
    Zn:= Zn * (n + 1) * (n + 2);
    n:= n + 2;
   end;  //result:=result*10;
end;
                                                   
Procedure PreSin (var Str:string);
var s,s2,s3:string;
k,i,n,n1,n2,p,g:integer;
i2,chisl:integer;
k3,k2:real;
begin
p:=1; k2:=0; k3:=0;
p:=pos('Sin(',str);
If p<> 0 then
while p<>0 do
Begin
str:=StringReplace(str, '.', ',', [rfReplaceAll, rfIgnoreCase]);
p:=pos('Sin(',str); p:=p+4;
k:= length(Str);
s:=''; s2:='';
n:=0;
n1:=0;
n2:=0;

 for i := k downto 1 do
  begin
   if (str[i-4] ='S') and (str[i-3] ='i') and (str[i-2] ='n') and (str[i-1] ='(')then
     begin
         g:=i;
         while (g<=k*2)  do
           begin
              if str[g] in (['1','2','3','4','5','6','7','8','9','0',',','-','+','*','/']) then  s2:=s2+str[g];
              if str[g+1] in [')'] then break else inc(g);
           end;

      delete(Str, i-4, length(s2) + 5);
      s2:= Count0(s2);
      k3:=  StrToFloat(s2);
      if (k3<0.001) and (k3>-0.001) then k2:=0 else k2:= MySin(k3);
      if length(str)>0 then
      for i2:=0 to length(str) do
      begin
      if str[i2]='(' then inc(chisl);
      if str[i2]=')' then dec(chisl);
      end;
      if (length(str)>0) and (Str[length(str)]=')') and (chisl<0) then delete(Str,length(str),1); //and (ch<0) then delete(Str,length(str),1);
      s3:=FloatToStr(k2);
     // s3:='(' + s3 + ')';
      Insert(s3, str, i-4);
     end;
      s2:='';
   end;
    p:=pos('Sin(',str);
End;
str:=StringReplace(str, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;

/////////////////////////////////////////////////////////////////////////////STepen
procedure Stepen( n,n1:integer; out s:string);
var
   i:real;
   i1:integer;
begin
//writeln('n= ',n,'n1= ',n1);
    s:='';  i:=1;
    if n1=0 then begin s:='0'; exit; end;
    if n1<0 then
    Begin
      n1:=n1*(-1);
      if (n mod 2) = 0 then i:=1 else i:=-1;
    end;
    i:=exp(n*ln(n1))*i;
    s:=FloatToStr(i);
end;

Procedure preStepen (var Str:string);
var s,s2:string;
k,i,n,n1,n2,n3,p,g:integer;
begin
p:=pos('^',str);
while p<>0 do
Begin
k:= length(Str);
s:=''; s2:='';
n:=0;
n1:=0;
n2:=0;
for i := 1 to k do
  begin
   if str[i] ='^' then
     begin
         g:=i;
         while g<=k do
           begin
              if str[g+1] in (['1','2','3','4','5','6','7','8','9','0','(','-']) then  s2:=s2+str[g+1];
              if str[g+2] in [')','-','+','*','/'] then break else inc(g);
           end;
     end;
   end;
  for i := 1 to k do
    begin
      if str[i] in (['1','2','3','4','5','6','7','8','9','0','(','-']) then  s:=s+str[i];
      if (str[i] in (['+','*','/'])) or ((str[i] ='-') and (str[i-2] <> '(')) then s:='';
      if (str[i-1] in [')']) and (str[i] in ['^']) then begin s:=s+')'; n:=length(s); s:= Count0(s); end else n:=length(s);
      n3:=n;
      if (str[i] ='^')and (length(s)>0 ) then
      begin
        delete(Str, p-n, n+1+length(s2));
        n1:=StrToInt(s);
        n:=StrToInt(s2);   // writeln('str4===',str);
        Stepen(n,n1,s);
        Insert(s, str, p-n3); // writeln('str5===',str);
      End;
    end;
    p:=pos('^',str);
End;
end;

/////////////////////////////////////////////////////////////////////factorial
var
   a:array[1..500] of integer;

procedure Factorial2(const n:integer;out s:string);
var
   i,j,fl:integer;
begin
for i:=1 to 500 do
a[i]:=0;
 s:='';
 a[1]:=1;
 for i:=2 to n do
  begin
      for j:=1 to 500 do
        a[j]:=a[j]*i;
      for j:=1 to 500 do
      if a[j]>999999 then
      begin
        a[j+1]:=a[j+1]+a[j] div 1000000;
        a[j]:=a[j] mod 1000000;
      end;
  end;
 fl:=1;
 for i:=500 downto 1 do
 begin
  if fl=0 then
   Begin
     if a[i]<10000 then s:=s+'00';
     if a[i]<1000 then s:=s+'00';
     if a[i]<100 then s:=s+'00';
     if a[i]<10 then s:=s+'00';
     s:=s+IntToStr(a[i]);
   end;
  if (a[i]>0) and (fl=1) then
  begin
    fl:=0;
    s:=s+IntToStr(a[i]);//  writeln('s2!=',s);
  end;
 end;
// writeln('s!=',s);
end;

Procedure PreFactorial (var Str:string);
var s:string;
k,i,n,n1,p:integer;
begin
p:=pos('!',str);
while p<>0 do
Begin                                   
k:= length(Str);
s:='';
n:=0;
n1:=0;
  for i := 1 to k do
    begin
      if str[i] in (['0'..'9','(',')']) then  s:=s+str[i];
      if str[i] in ['+','-', '*', '/'] then s:='';
      if (str[i] ='!')and (length(s)>0 ) then
      begin
        n:=length(s);
        s:= Count0(s);
        delete(Str, p-n, n+1);
        n1:=StrToInt(s);
        Factorial2(n1,s);
        Insert(s, str, p-n);
      End;
    end;
    p:=pos('!',str);                                   
End;
end;

procedure PreX(Var S:string);
var
p:integer;
Begin
//a:=StrToInt(Form1.Edit1.Text);           //откуда начать
//a2:=StrToInt(Form1.Edit2.Text);               //шаг
if not b then k1:=StrToInt(Form1.Edit1.Text) else  k1:=k1+StrToInt(Form1.Edit2.Text);
 b:=true;
  While pos('X',s)<>0 do
  Begin
      p:=pos('X',s);
      Delete(s,p,1);
      //Insert('(' + IntToStr(k1) + ')',s,p);
      Insert(IntToStr(k1) ,s,p);
  End;
End;

///////////////////////////////////////////////////////////////////// MAIN
procedure Push(x: extended);
begin
  SetLength(q,length(q)+1);
  Inc(len);
  q[len] := x;
end;

function Pop: extended;
begin
  Pop := q[len];
  q[len] := 0;
  Dec(len);
  SetLength(q,length(q)-1);
end;

procedure PushC(x: Char);
begin
  SetLength(w,length(w)+1);
  Inc(len2);
  w[len2] := x;      //знаки
end;

function Popc: Char;
begin
  Popc := w[len2];       //  writeln('pops/w[len2]==',w[len2]);
 // w[len2] := #0;
  Dec(len2);
  SetLength(w,length(w)-1);                                  
end;

function vychislenie(s1, s2: extended; s3: Char):  extended;
var
  x, y, z: extended;
begin
  x := s1;
  y := s2;
  case s3 of
    '+': z := x + y;
    '-': z := x - y;
    '*': z := x * y;
    '/': if y=0 then begin Form1.label1.Caption:=Form1.label1.Caption+'Было деление на 0'; vychislenie := 0; exit; end else
    z := x / y;
  end;
  vychislenie := z;
end;

procedure PreChange(var s: String; out g:boolean);
var
  i,k,Scob: integer;
begin
g:=true;
n:=length(s);
  if s[1] = '-' then
    s := '0' + s
    else
  if s[1] = '0' then
    s := '0+' + s;           

  k:=0;
  for i:= 1 to n do
  Begin
    if ( (s[i] = '*') or (s[i] = '/') ) and (s[i + 1] in ['+','-']) then
    Begin
      insert('(', s, i + 1);
      k:=i+2;
      repeat
        inc(k);
        if  s[k+1] in (['0'..'9']) then
        g:=true else g:=false;
      until not g;
     // end;
      insert(')', s, k + 1);
    end;
  End;
  g:=true;
  n:=length(s);
  Scob:=0;
  for i:=1 to n do
  Begin
    If s[i] = '(' then inc(Scob);
    If s[i] = ')' then dec(Scob);
  End;
  if Scob <>0 then
  Begin
    Form1.label1.Caption:=Form1.label1.Caption+'неправильная скобчная последовательность';
    g:=false;
    exit;
  end;
  i:=1;
  while i <= n do
  Begin
    if (s[i] = '(') and (s[i + 1] = '-') then
      insert('0', s, i + 1);

       if (s[i] = '+')  and ((s[i + 1] = '-') or (s[i + 1] = '+')) then
      insert('0', s, i + 1);

     if (s[i] = '-') and (s[i + 1] = '-') then
     begin
       delete(s, i, 2);
       insert('+', s, i );
     end;

       if not (s[i] in (['0'..'9','+','-','*','/','.',',','(',')','C','o','s','S','i','n','L','n','!','^']))  then
     begin
       Form1.label1.Caption:=Form1.label1.Caption+'ошибка ввода(error 1)';
       g:=false;
       exit;
     end;

     if (s[i] = '/') and (s[i + 1] = '0') and (s[i + 2] <> '.') and (s[i + 2] <> ',') then
     begin
       Form1.label1.Caption:=Form1.label1.Caption+'ошибка. Деление на 0';
       g:=false;
       exit;
     end;
      Inc(i);
   end;
end;

function Change(s: String): String;
var
  i: integer;
  rezs: String;
  c: Boolean;
begin
  c := false;
  for i := 1 to n do
    begin
      if not(s[i] in ['+', '-', '*', '/', '(', ')']) then
        begin
          if c then rezs := rezs + ' ';
          rezs := rezs + s[i];
          c := false;
        end
      else
        begin
          c := true;
          if s[i] = '(' then
            PushC(s[i])
          else
            if s[i] = ')' then
              begin
                while w[len2] <> '(' do
                  begin
                  rezs := rezs + ' ' + Popc;
                  end;
                Popc;
              end
            else
              if s[i] in ['+', '-', '*', '/'] then
                begin
                  while pri[Pos(w[len2], prs)] >= pri[Pos(s[i], prs)] do
                    rezs := rezs + ' ' + Popc;
                  PushC(s[i]);
                end;
        end;
    end; // writeln('result1=',rezs);
  while len2 <> 0 do
    rezs := rezs + ' ' + Popc;  //  writeln('result2=',rezs);
  Result:=rezs;
end;
//////////////////////////////////////////////////////////////////////// из строки s2 делаем число (f)
function Count(s: String): extended;
var
  ss: String;
  s1, s2: extended;
  x:extended;
  chh, s3: Char;
  p: extended;
  i, j: integer;
  tmp: Integer;
//  n:integer;
begin
//n:=length(s);
  i := 0;
  repeat
    j := i + 1;
    repeat
      Inc(i)
    until s[i] = ' ';          // writeln('i=',i);
    ss := copy(s, j, i - j);  //writeln('ss=',ss);  //числа из строки   35,14-8,28
    chh := ss[1];     //writeln('chh=',chh);
    if not(chh in ['+', '-', '*', '/']) then
      begin
    // p:=StrToInt(ss);
   //  writeln('ss=',ss);
        Val(ss, p, tmp); //writeln('p=',p);  //  writeln(''); writeln('ss=',ss); //слово в целое число
        Push(p);                           //заносим в стек числа
      end
    else
      begin        //    writeln('');
        s2 := Pop; //  writeln('s2===',s2:4:4);
        s1 := Pop;  // writeln('s1===',s1:4:4);
        s3 := chh; ///writeln('s3===',s3);
        Push(vychislenie(s1, s2, s3));
      end;
  until i >= n;
  x := Pop;
  Count := x;
end;

/////////////////////////////////////////////////////////////////main _ end
////////////////////////////////////////////////////////////////calculations end/ visual start
procedure TForm1.Button1Click(Sender: TObject);
begin
s1:=s1+'1';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
s1:=s1+'2';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
s1:=s1+'3';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
s1:=s1+'4';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
s1:=s1+'5';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
s1:=s1+'6';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
s1:=s1+'7';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
s1:=s1+'8';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
s1:=s1+'9';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
s1:=s1+'0';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 s1:=s1+'+';
label1.Caption:=s1;
 A.Text:=s1;
end;


procedure TForm1.Button14Click(Sender: TObject);
begin
b:=False;
c1:=false;
k1:=1;
s1:='';
label1.Caption:=s1;
A.Text:=s1;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 s1:=s1+'/';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
 s1:=s1+'*';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
delete(s1,length(s1),1);
 A.Text:=s1;
label1.Caption:=  s1;

end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 s1:=s1+'-';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
 s1:=s1+'!';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
 s1:=s1+')';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
 s1:=s1+'(';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  s1:=s1+'.';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
s1:=s1+'^';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  s1:=s1+'Sin(';
label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button24Click(Sender: TObject);
var str:string;
g,i:integer;
begin
  s1:=s1+'Cos(';
 label1.Caption:=s1;
  A.Text:=s1;
end;

 procedure TForm1.Button26Click(Sender: TObject);
begin
 s1:=s1+'X';
 label1.Caption:=s1;
 A.Text:=s1;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
   s1:=s1+'Ln(';
 label1.Caption:=s1;
 A.Text:=s1;
end;

Procedure PreCount(var s1:string; var g:boolean);
Begin
SetLength(q,1);
SetLength(w,1);
    DeleteSpaces(s1);
    s1:=StringReplace(s1, ',', '.', [rfReplaceAll, rfIgnoreCase]);
    PreX(s1);
    PreChange(s1,g);
      if g=false then exit;
    PreFactorial(s1);
    preStepen(s1);
    if pos('C',s1) > pos('S',s1) then
    Begin
        PreSin(s1);
        PreCos(s1);
    end else
    Begin
        PreCos(s1);
        PreSin(s1);
    end;

end;

Function Count0 (s4:string):string;
var g:boolean;
Begin
    s4:=StringReplace(s4, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    n := Length(s4);
    PreChange(s4,g);
      if g=false then exit; //добавляет 0 перед -
    n := Length(s4);
    s2 := Change(s4); //составляем rezs = s2
    if s2[1] = ' ' then
        delete(s2, 1, 1);
    s2 := s2 + ' ';  //  writeln('S2===',s2);
    n := Length(s2);
    t := Count(s2);     //label3.Caption:=s2;
    s4:=FloatToStr(t);
    result:=s4;
ENd;

procedure TForm1.Button11Click(Sender: TObject);
var
p:integer;
g:boolean;                                  
begin
   if length(s1) <=0 then exit;
    p:=pos('X',s1);
    if p <>0 then q3:=true;


    PreCount(s1,g);
    s1:=Count0(s1);
     if g=false then exit;

    if q3 then
    Begin
     Form1.Edit4.Text:=StringReplace(Form1.Edit4.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);
      If not c1  then DrawGraph.Canvas.MoveTo(k1 + round(DrawGraph.Width/2), Round(-1*t*StrToFloat(Form1.Edit4.Text)+ DrawGraph.height/2) );
      If c1 then DrawGraph.Canvas.LineTo(k1 + round(DrawGraph.Width/2),Round(-1*t*StrToFloat(Form1.Edit4.Text)+ DrawGraph.height/2) );
    End;
    vizual(s1);

   // label1.Caption:=s1;
    A.Text:=s1;

end;

procedure TForm1.AKeyPress(Sender: TObject; var Key: Char);
begin
   Case Key of
   #13: Button11Click(Self);
   #8: Button17Click(Self);
   Else
      s1:=s1 + key;
      A.Text:=s1;
      label1.Caption:=s1;
      key:= #0;
      A.SelStart:= Length(A.Text);
   end;
   key:= #0;
     A.SelStart:= Length(A.Text);
end;


procedure TForm1.Button27Click(Sender: TObject);
var i2:integer;
begin
  if (pos('!',s1)<>0 )  and ((StrToInt(Form1.Edit1.Text)<0) or (StrTOint(Form1.Edit3.Text)>20)) then
  Begin
       Form1.label1.Caption:='при этом X нельзя построить график';
       exit;
  End;

 DrawGraphClick(Self);
 s3:=s1; q3:=true;                       
 k1:=StrToInt(Form1.Edit1.Text);
 c1:=false;
  while k1 < StrToInt(Form1.Edit3.Text) do
  begin
   s1:=s3;
   Button11Click(Self);
   c1:=true;
  End;
end;

procedure TForm1.DrawGraphClick(Sender: TObject);          
begin
  DrawGraph.Canvas.MoveTo(0,round(DrawGraph.height/2));
  DrawGraph.Canvas.LineTo(DrawGraph.Width,round(DrawGraph.height/2));
  DrawGraph.Canvas.MoveTo(round(DrawGraph.Width/2),0);
  DrawGraph.Canvas.LineTo(round(DrawGraph.Width/2),DrawGraph.height);
end;

procedure TForm1.Button28Click(Sender: TObject);
begin
   Button14Click(Self);
   DrawGraph.Canvas.REctangle(0,0,DrawGraph.Width,DrawGraph.height)
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
   label3.Caption:=s1 + '-->';
end;

procedure TForm1.Button29Click(Sender: TObject);
begin
  s1:=s1+'(Sin(X))/(Sin(X*2))'; //1/(2*X)    2*(X)^2+2*(X)+200   (Sin(X))/(Cos(X))
label1.Caption:=s1;
 A.Text:=s1;
end;



procedure TForm1.Button30Click(Sender: TObject);
Var
i:integer;
List:tStringList;
begin
   If (openDialog1.Execute) then
  Begin
    List:=tStringList.Create;
    List.LoadFromFile(openDialog1.FileName);
    For i:=0 to List.Count-1 do
    Begin
      s1:=List.Strings[i];
      A.Text:=List.Strings[i];
    end;
    List.SaveToFile(openDialog1.FileName);
    List.Free;
  End;
End;

procedure TForm1.Button31Click(Sender: TObject);
Var
i:integer;
List:tStringList;
begin
i:=1;                                                
   If (openDialog1.Execute) then
  Begin
    List:=tStringList.Create;
    List.LoadFromFile(openDialog1.FileName);
    //For i:=0 to List.Count-1 do
    List.Strings[i]:=List.Strings[i] + ' = ' + s1;
    List.SaveToFile(openDialog1.FileName);
    List.Free;
  End;
  inc(i);
end;

end.
