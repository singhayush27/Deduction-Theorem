belong(a).
belong(b).
belong(c).

belong(X):-notmountainclimber(X),notskier(X),!,fail.
belong(X).

like(a,rain).
like(a,snow).

like(a,X):-dislike(b,X).
like(b,X):-like(a,X),!,fail.
like(b,X).

mountainclimber(X):-like(X,rain),!,fail.
mountainclimber(X).
notskier(X):-dislike(X,snow).
notmountainclimber(X):-mountainclimber(X),!,fail.
notmountainclimber(X).

dislike(P,Q):-like(P,Q),!,fail.
dislike(P,Q).

g(X):-belong(X),mountainclimber(X),notskier(X),!.