% This function is to get needles

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

% a is the number fit for require
a = 0 ;
xxx = [0 0];
yyy = [0 0];
for i = 1:N;
[x y th] = rrr(val,d,n,D);
   yy = y + L * sin(th) ;
   xx = x+cos(th)*L;
   p1 = mod(y,D) ;
   p2 = mod(yy,D) ;
   if abs(p1-p2) > D - L
       a = a + 1 ;
   end ;
if rand()<h/100;
    xxx=[xxx;x xx];
    yyy=[yyy;y yy];    
end;
end;
xxx(1,:)=[];
yyy(1,:)=[];
p=size(xxx);
for i=1:p(1)
line(xxx(i,:),yyy(i,:));
end