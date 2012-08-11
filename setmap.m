clc;cla;

val = get(hpop,'Value');
D = str2num(get(heditD,'string'));
d = str2num(get(heditd,'string'));
L = str2num(get(heditL,'string'));
n = str2num(get(heditn,'string'));
N = str2num(get(heditN,'string'));
h = get(hslider,'value');

for i = 0:n-1
    line([0 d],[i i]*D,'Color','r','LineWidth',4);
end
axis([-0.1*d 1.1*d -0.1*D*n 1.1*D*(n-1)]);
line([1.1*d 1.1*d],[-0.1*D*n 1.1*D*(n-1)],'Color','k');
line([-0.1*d 1.1*d],[1.1*D*(n-1) 1.1*D*(n-1)],'Color','k');
