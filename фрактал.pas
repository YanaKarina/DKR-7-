Program DKR7;
uses GraphABC;
procedure Serp(x1, y1, x2, y2: Real; n: Integer);
var
x1n, y1n, x2n, y2n: Real;
begin
if n > 0 then
begin
x1n := 2*x1/3 + x2 / 3;
x2n := x1/3 + 2*x2 / 3;
y1n := 2*y1/3 + y2 / 3;
y2n := y1/3+2*y2 / 3;
Rectangle(Round(x1n), Round(y1n), Round(x2n), Round(y2n));
Serp(x1, y1, x1n, y1n, n-1);
Serp(x1n, y1, x2n, y1n, n-1);
Serp(x2n, y1, x2, y1n, n-1);
Serp(x1, y1n, x1n, y2n, n-1);
Serp(x2n, y1n, x2, y2n, n-1);
Serp(x1, y2n, x1n, y2, n-1);
Serp(x1n, y2n, x2n, y2, n-1);
Serp(x2n, y2n, x2, y2, n-1)
end
end;
begin
Rectangle(20, 20, 460, 460);
Serp(20, 20, 460, 460, 4);
end.