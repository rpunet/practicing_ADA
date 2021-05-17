with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure Primes is
	number	:	Integer;
begin
	Primes_loop:
		loop
			Put("Enter an integer: ");
			Get(number);
			exit Primes_loop when number = 0;
			if number < 0 then
				Put_Line("The value " & Integer'Image(number) & " is negative");
			else
				Put("The value "); Put(number, 0); Put_Line(" is positive.");
			end if;
		end loop Primes_loop;
end Primes;
