with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Vowels is
	letter	: Character;
	vowel_count	: Integer := 0;
	Y_count	: Integer := 0;
begin
	while not End_Of_File loop
		Get(letter);
		case letter is
			when 'A'|'E'|'I'|'O'|'U'|'a'|'e'|'i'|'o'|'u' => vowel_count := vowel_count + 1;
			when 'Y'|'y' => Y_count := Y_count + 1;
			when others => null;
		end case;
	end loop;
	Put_Line("Number of vowels = " & Integer'Image(vowel_count));
	Put_Line("Number of Ys = " & Integer'Image(Y_count));
end Vowels;
