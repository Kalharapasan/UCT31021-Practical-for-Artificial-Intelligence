%Task 01

list(X,[X|_]).
list(X,[_|TALL]):- list(X,TALL),!.

%Task 02_01
tree(5,3,7).
tree(3,1,4).
tree(7,6,9).

left(Node,Left):-tree(Node,Left,_).
right(Node,Right):-tree(Node,_,Right).

%Task 02_02
bfs([],[]).
bfs([Node | Queue], [Node | Result]) :-
    findall(Child,(left(Node, Child);right(Node,Child)),Children),
    append(Queue,Children,NewQueue),
    bfs(NewQueue,Result).

bfs_traversal(Root, Result) :-
    bfs([Root], Result).

%Task 02_03

preorder(nil,[]).

preorder(Node,[Node|List]:-
         left(Node,Left),preorder(Left,LeftList),
         right(Node,Right),Preorder(Right,RightLit),
         append(LeftList,RightList,List).


preoeder(Node,[Node]):-\+left(Node,_),\+right(Node,_).

dfs_preorder(Root,Result):-preorder(Root,Result).

%Task 03

path(X,Y,[(X,Y),_]):-
    edge(X,Y),
    !.
path(X,Y,[(X,Z)|T],Visited):-
    edge(X,Z),
    not(member(z,Visited),
    path(Z,Y,T,[Z|Visited]).

edge(1,2).
edge(1,3).
edge(2,3).
edge(2,4).
edge(2,5).
edge(3,5).
edge(4,5).
edge(4,6).
edge(5,6).

find_path(X,Y,path):-
    path(X,Y,path,[X]).



