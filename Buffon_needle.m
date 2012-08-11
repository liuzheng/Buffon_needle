
% Monte Carlo test for Buffon's needle
clc;clear;figure(1);clf;

% D is each line distance , default is 5
D = 5 ;
heditD = uicontrol(gcf,'style','edit','string','5','position',[20 300 100 25]);


% d is line length
d = 10 ;
heditd = uicontrol(gcf,'style','edit','string','10','position',[20 270 100 25]);

% L is each needle's length
L = 1 ;
heditL = uicontrol(gcf,'style','edit','string','1','position',[20 240 100 25]);

% n is line number
n = 5 ;
heditn = uicontrol(gcf,'style','edit','string','5','position',[20 210 100 25]);

% N is the time to run 
N = 500 ;
heditN = uicontrol(gcf,'style','edit','string','500','position',[20 180 100 25]);


val = 1;
     
hpop = uicontrol('style','popup',...
    'string','Rand|Betarnd|Binornd|Chi2rnd|Exprnd|Frnd|Gamrnd|Geornd|Hygernd|Lognrnd|Nbinrnd|Ncfrnd|Nctrnd|Ncx2rnd|Normrnd|Poissrnd|Raylrnd|Trnd|Unidrnd|Unifrnd|Weibrnd',...
    'position',[20 320 100 50]);

button1 = uicontrol('style','pushbutton',...
    'string','ok',...
    'position',[20 140 100 30],...
    'callback',[...
'setmap;',...
'tic;',...
'needles;',...
'toc;',...
'a/N'...
]);

% set the show square
axes('position',[.3 .26 .6 .6]);
% close the xtick and ytick
set(gca,'xtick',[],'ytick',[]);

hslider = uicontrol('style','slider',...
    'min',0,'max',100,'value',50,...
    'position',[20 70 200 30]);
