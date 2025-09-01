program GuessTheNumber;
uses
    Crt;

var
    result: Integer;
    guess: Integer;
    first: Integer;
    last: Integer;

begin
    first := 1;
    last := 10;
    Randomize; // Initialize the random number generator

    result := Random(last) + first;
    writeln('Guess a number between ', first, ' and ', last);

    repeat
        write('Write your guess: ');
        readln(guess);

        if guess < result then
            writeln('Too low. Try it higher');
        if guess > result then
            writeln('Too high. Try it lower');

    until guess = result;

    writeln('Nice. You guessed the right number!');
end.
