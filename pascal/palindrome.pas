Program Palindrome;
(*
    Checks if a word is a palindrome
    A palindrome is a word that reads the same backwards and forwards (e.g., "radar", "level", "madam").
*)

var
    input, reversed: String; // Strings start at index 1 in pascal
    i: Integer;

begin
    // Intro
    writeln;
    writeln('Check if a word is a palindrome');

    // Ask for input
    write('Input your word: ');
    readln(input);

    // Reverse the string
    reversed := input; // Init the reversed string with the same length of the input
    for i := 1 to length(input) do
    begin
        reversed[length(input) + 1 - i] := input[i];
    end;

    // Output result
    writeln;
    writeln('Is "', input, '" a palindrome? ', input = reversed);
end.
