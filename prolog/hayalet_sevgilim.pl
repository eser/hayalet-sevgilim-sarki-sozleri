main :-
    open('hayalet_sevgilim.txt', read, Str),
    read_lines(Str),
    close(Str).

read_lines(Stream) :-
    \+ at_end_of_stream(Stream),
    read_line_to_codes(Stream, Line),
    atom_codes(AtomLine, Line),
    writeln(AtomLine),
    read_lines(Stream).

read_lines(_).

