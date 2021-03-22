program mm;

Uses
	Crt;

Var
 	n1,n2,n3,n4,c1,c2,c3,c4,i,p,e,t,y : Integer;
	z : char;
	salir : boolean;

begin
	ClrScr;
	Randomize;
	i := 1;
	salir := False;
	repeat
		c1:=random(5);
		c2:=random(5);
		if c2=c1 then c2:=random(5);
		c3:=random(5);
		if ((c3=c1) or (c3=c2)) then c3:=random(5);
		c4:=random(5);
		if ((c4=c1) or (c4=c2) or (c4=c3)) then c4:=random(5);
	until ((c1<>c2) and (c1<>c3) and (c1<>c4) and (c2<>c3) and (c2<>c4) and (c3<>c4));
	GotoXY(1,1); 
	Writeln('Mente Maestra');
	GotoXY(1,2);
	Writeln('Se han escogido 4 numeros, debes averiguar cuales son y en que posicion estan');
	GotoXY(1,3);
	Write('Los resultados significan:');
	GotoXY(1,4);
	Write(' -X- numero correcto posicion correcta; -O- numero correcto posicion incorrecta');
	GotoXY(1,5);
	Write('Tienes 10 intentos. Adelante!');
    repeat
		GotoXY(1,i+6);
		Write('Intento ',i,' ->');
		GotoXY(14,i+6);
		Read(n1);
		GotoXY(16,i+6);
		Write('-');
		GotoXY(18,i+6);
		Read(n2);
		GotoXY(20,i+6);
		Write('-');
		GotoXY(22,i+6);
		Read(n3);
		GotoXY(24,i+6);
		Write('-');
		GotoXY(26,i+6);
		Read(n4);
		GotoXY(28,i+6);
		p := 0; e := 0;
		if (n1=c1) then p:= p+1;
		if (n2=c2) then p:= p+1;
		if (n3=c3) then p:= p+1;
		if (n4=c4) then p:= p+1;
		if ((n1=c2) or (n1=c3) or (n1=c4)) then e:= e+1;
		if ((n2=c1) or (n2=c3) or (n2=c4)) then e:= e+1;
		if ((n3=c1) or (n3=c2) or (n3=c4)) then e:= e+1;
		if ((n4=c1) or (n4=c2) or (n4=c3)) then e:= e+1;
		GotoXY(32,i+6);
		Write('Resultado:');
		if p>0 then
		begin
			for t:=1 to p do
			begin
				GotoXY(43+t,i+6);
				Write('X');
			end;
		end;
		if e>0 then
		begin
			for y:=1 to e do
			begin
				GotoXY((43+p+y),i+6);
				Write('O');
			end;
		end;
		if p=4 then salir := 
		True;
		i := i+1;
		if i=11 then salir := True;
	until (salir=True);
	if p=4 then 
	begin
		GotoXY(40,24);Write('F-E-L-I-C-I-D-A-D-E-S');
	end;
	if i=11 then
	begin
		GotoXY(40,24);Write('P-E-R-D-I-S-T-E')
	end;
	z:=Readkey;
end.
