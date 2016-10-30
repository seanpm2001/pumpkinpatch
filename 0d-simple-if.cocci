@@
type T;
T *x;
statement S;
@@
  if (
- !x
+ x == NULL
  )
    S

@@
type T;
T *x;
statement S;
@@
  if (
- x
+ x != NULL
  )
    S

@@
type T;
identifier x;
expression y, z;
@@
  T *x;
  <+...
- x ? y : z
+ x == NULL ? z : y
  ...+>

@@
identifier x;
statement S;
@@
  int x;
  <+...
  if (
- x
+ x != 0
  )
    S
  ...+>

@@
identifier x;
statement S;
@@
  int x;
  <+...
  if (
- !x
+ x == 0
  )
    S
  ...+>

@@
type T;
T *x;
identifier f =~ "alloc";
expression E;
constant C;
statement S;
@@
+ x = E;
  if (
  <+...
- (x = f(...)@E) == C
+ x == C
  ...+>
  )
    S
