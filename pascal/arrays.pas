Program Arrays;
(*
      Arrays - Ask the user to enter 10 numbers and then show them the sum,
    the avarage, the largest number and the smallest number.
*)

const
    FST = 0;
    LST = 9;

var
    arr: array [FST..LST] of Integer;
    i: Integer = 0;
    j: Integer;
    sum: Integer = 0;
    avg: Double;
    max: Integer;
    min: Integer;

begin
    writeln;
    writeln('Input integer 10 numbers to make an array');
    writeln('Then calculate the sum, the avarage, the largest and the smallest number.');

    // Read Input from user
    repeat
        write('Input the ', i, ' number:');
        readln(arr[i]);
        i += 1;
    until i = 10;

    // Print Array
    writeln('Array --------------------------------------------------');
    max := arr[0];
    min := arr[0];
    for j := 0 to 9 do
    begin
        sum += arr[j];
        if arr[j] > max then
            max := arr[j];
        if arr[j] < min then
            min := arr[j];
        write('[', j, '] = ', arr[j], '  ');
    end;
    writeln;

    // Print results
    writeln('Results --------------------------------------------------');
    writeln('Sum = ', sum);
    avg := sum / (LST + 1);
    writeln('Avarage = ', avg:0:2);
    writeln('Max = ', max);
    writeln('Min = ', min);
end.
