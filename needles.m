% This function is to get needles

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to liuzheng712@gmail.com
% Thank you !

% a is the number fit for require
a = 0 ;

for i = 1:N;
[x y th] = rrr(val,d,n,D);
   yy = y + L * sin(th) ;
   p1 = mod(y,D) ;
   p2 = mod(yy,D) ;
   if abs(p1-p2) > D - L
       a = a + 1 ;
   end ;
if rand()<h/100;
    line([x x+cos(th)*L],[y yy]);
end;
end;
