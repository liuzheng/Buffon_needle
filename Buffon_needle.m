% Monte Carlo test for Buffon's needle

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to liuzheng712@gmail.com
% Thank you !

clc;clear;
% New a figure
figure('color',[1 1 1],'name','Buffon needles','numbertitle','off','menubar','none');
clf;

% set title
htexttitle = uicontrol(gcf,'style','text',...
    'string','Buffon needles',...
    'fontsize',26,...
    'position',[120 380 300 40]);

% D is each line distance , default is 5
D = 5 ;
heditD = uicontrol(gcf,'style','edit','string','5','position',[20 300 100 20]);
htextD = uicontrol(gcf,'style','text','string','D is each line distance','position',[5 322 130 16]);

% d is line length
d = 10 ;
heditd = uicontrol(gcf,'style','edit','string','10','position',[20 260 100 20]);
htextd = uicontrol(gcf,'style','text','string','d is line length','position',[5 282 130 16]);

% L is each needle's length
L = 1 ;
heditL = uicontrol(gcf,'style','edit','string','1','position',[20 220 100 20]);
htextL = uicontrol(gcf,'style','text','string','L is each needle''s length','position',[5 242 130 16]);

% n is line number
n = 5 ;
heditn = uicontrol(gcf,'style','edit','string','5','position',[20 180 100 20]);
htextn = uicontrol(gcf,'style','text','string','n is line number','position',[5 202 130 16]);

% N is the time to run 
N = 500 ;
heditN = uicontrol(gcf,'style','edit','string','500','position',[20 140 100 20]);
htextN = uicontrol(gcf,'style','text','string','N is the time to run','position',[5 162 130 16]);

val = 1;
tt = 0;

% close the menubar
%set(gcf,'menubar','none');


% popip
hpop = uicontrol('style','popup',...
    'string','Rand|Betarnd|Binornd|Chi2rnd|Exprnd|Frnd|Gamrnd|Geornd|Hygernd|Lognrnd|Nbinrnd|Ncfrnd|Nctrnd|Ncx2rnd|Normrnd|Poissrnd|Raylrnd|Trnd|Unidrnd|Unifrnd|Weibrnd',...
    'position',[20 320 100 50]);

button1 = uicontrol('style','pushbutton',...
    'string','ok',...
    'position',[20 100 100 30],...
    'callback',[...
'setmap;',...
'tic;',...
'needles;',...
'tt=toc;',...
'heditans = uicontrol(gcf,''style'',''text'',''string'',[''Elapsed time is '',num2str(tt),'' seconds.'',10,''Probability '',num2str(a/N)],''position'',[280 45 200 40]);']);

% set the show square
axes('position',[.3 .26 .6 .6]);
% close the xtick and ytick
set(gca,'xtick',[],'ytick',[]);

% slider
hslider = uicontrol('style','slider',...
    'min',0,'max',100,'value',50,...
    'position',[20 50 200 30]);

heditans = uicontrol(gcf,'style','text',...
    'string',['Elapsed time is ',num2str(tt),' seconds.',10,'Probability ','0'],...
    'position',[280 45 200 40]);

line([1 1],[0 1],'Color','k');
line([0 1],[1 1],'Color','k');
