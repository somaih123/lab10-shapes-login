% Task 1: area and perimeter of a square, a rectangle and a triangle.

% square(Side, Area, Perimeter)
square(S, Area, Perimeter) :-
    Area is S * S,
    Perimeter is 4 * S.

% rectangle(Width, Height, Area, Perimeter)
rectangle(W, H, Area, Perimeter) :-
    Area is W * H,
    Perimeter is 2 * (W + H).

% triangle(Base, VerticalHeight, A, B, C, Area, Perimeter)
% A, B and C are the three sides.
triangle(Base, H, A, B, C, Area, Perimeter) :-
    Area is Base * H / 2,
    Perimeter is A + B + C.
