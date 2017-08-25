%Program 3
%Nick King

%rule houses(Hs) with member constraints given in assignment document
%rule to check membership of zebra related to house number
%rule to check membership of water related to house number
%rules adjacent() and right() couple elements as an instance in certain order

zebra_lives_in(Number) :-
	houses(Hs),
	member(h(Number,_,_,_,_,zebra), Hs).

water_drinker(Number) :-
	houses(Hs),
	member(h(Number,_,_,water,_,_), Hs).


houses(Hs) :-
	% declaring membership and relations
	% houses in list are represented as
	% h(Number, Color, Nationality, Drink, Candy, Pet)

	length(Hs, 5),
	member(h(_,red,englishman,_,_,_), Hs),					
	member(h(_,_,spaniard,_,_,dog), Hs),					
	member(h(1,_,norwegian,_,_,_), Hs),
	member(h(_,_,_,_,smarties,snails), Hs),
	right(h(_,green,_,_,_,_), h(_,white,_,_,_,_), Hs),
	adjacent(h(_,_,_,_,hershey,_), h(_,_,_,_,_,fox), Hs),
	member(h(_,yellow,_,_,kitkats,_), Hs),
	adjacent(h(_,_,norwegian,_,_,_), h(_,blue,_,_,_,_), Hs),
	member(h(_,_,_,juice,snickers,_), Hs),
	member(h(_,_,japanese,_,milkyway,_), Hs),
	member(h(_,_,ukrainian,tea,_,_), Hs),
	adjacent(h(_,_,_,_,kitkats,_), h(_,_,_,_,_,horse), Hs),
	member(h(_,green,_,coffee,_,_), Hs),
	Hs = [_,_,h(_,_,_,milk,_,_),_,_],
	
	member(h(_,_,_,_,_,zebra), Hs),
	member(h(_,_,_,water,_,_), Hs),
	right(h(2,_,_,_,_,_), h(1,_,_,_,_,_), Hs),
    right(h(3,_,_,_,_,_), h(2,_,_,_,_,_), Hs),
    right(h(4,_,_,_,_,_), h(3,_,_,_,_,_), Hs),
    right(h(5,_,_,_,_,_), h(4,_,_,_,_,_), Hs).
    


adjacent(A, B, Ls) :- append(_, [A,B|_], Ls).
adjacent(A, B, Ls) :- append(_, [B,A|_], Ls).

right(A, B, Ls) :- append(_, [B,A|_], Ls).





%resources-
%http://swish.swi-prolog.org/example/houses_puzzle.pl -algorithm, rule structure
%http://www.cse.unsw.edu.au/~billw/prologdict.html#list -understanding built-ins
%http://math.uni.lodz.pl/~kowalcr/PPL/PrologBook.pdf -trace examples

