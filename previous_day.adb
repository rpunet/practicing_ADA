with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure previousDay is
	dd: Integer;
	mm: Integer;
	aaaa: Integer;
begin
	Put_Line("day");
	Get(dd);
	Put_Line("month");
	Get(mm);
	Put_Line("year");
	Get(aaaa);
	if dd = 1 and (mm = 2 or mm = 4 or mm = 9 or mm = 11) then
		mm:= mm - 1;
		dd:= 31;
	elsif dd = 1 and (mm = 5 or mm = 7 or mm = 10 or mm = 12) then
		mm:= mm - 1;
		dd:= 30;
	elsif dd = 1 and mm = 1 then
		mm:= 12;
		dd:= 31;
		aaaa:= aaaa - 1;
	elsif dd = 1 and mm = 3 then
		mm:= 2;
		if (aaaa mod 4 = 0 or aaaa mod 400 = 0) and aaaa mod 100 /= 0 then
			dd:= 29;
		else
			dd:= 28;
		end if;
	else
		dd:= dd - 1;
	end if;
	Put_Line("The previous day was: " & Integer'Image(dd) & "/" & Integer'Image(mm) & "/" & Integer'Image(aaaa));
end previousDay;
