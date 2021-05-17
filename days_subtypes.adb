with Ada.Text_IO;			use Ada.Text_IO;
procedure subtypes is
	type day_type is (mon, tue, wed, thu, fri, sat, sun);
	subtype weekday is day_type range mon .. fri;
begin
	for day in day_type loop
		case day is
			when sun => Put_Line("Sunday");
			when weekday => Put_Line("Weekday");
			when sat => Put_Line("Saturday");
		end case;
	end loop;

end subtypes;
