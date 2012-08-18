function [x y th] = rrr(v,d,n,D)
% This function is to design which rand function to use .

% Liuzheng 
% Copyright (c) 2012

% If you have some advises or problems , please mail to me
% Gmail:liuzheng712
% Thank you !

switch v
    case 1 
        x = rand() * d ;
        y = rand() * ( n - 1 ) * D ;
        th = rand() * 2 * pi ;
    case 2
        x = betarnd() * d ;
        y = betarnd() * ( n - 1 ) * D ;
        th = betarnd() * 2 * pi ;
    case 3
        x = binornd() * d ;
        y = binornd() * ( n - 1 ) * D ;
        th = binornd() * 2 * pi ;
    case 4
        x = chi2rnd() * d ;
        y = chi2rnd() * ( n - 1 ) * D ;
        th = chi2rnd() * 2 * pi ;
    case 5
        x = exprnd() * d ;
        y = exprnd() * ( n - 1 ) * D ;
        th = exprnd() * 2 * pi ;
    case 6
        x = frnd() * d ;
        y = frnd() * ( n - 1 ) * D ;
        th = frnd() * 2 * pi ;
    case 7
        x = gamrnd() * d ;
        y = gamrnd() * ( n - 1 ) * D ;
        th = gamrnd() * 2 * pi ;
    case 8
        x = geornd() * d ;
        y = geornd() * ( n - 1 ) * D ;
        th = geornd() * 2 * pi ;
    case 9
        x = hygernd() * d ;
        y = hygernd() * ( n - 1 ) * D ;
        th = hygernd() * 2 * pi ;
    case 10
        x = lognrnd() * d ;
        y = lognrnd() * ( n - 1 ) * D ;
        th = lognrnd() * 2 * pi ;
    case 11
        x = nbinrnd() * d ;
        y = nbinrnd() * ( n - 1 ) * D ;
        th = nbinrnd() * 2 * pi ;
    case 12
        x = ncfrnd() * d ;
        y = ncfrnd() * ( n - 1 ) * D ;
        th = ncfrnd() * 2 * pi ;
    case 13
        x = nctrnd() * d ;
        y = nctrnd() * ( n - 1 ) * D ;
        th = nctrnd() * 2 * pi ;
    case 14
        x = ncx2rnd() * d ;
        y = ncx2rnd() * ( n - 1 ) * D ;
        th = ncx2rnd() * 2 * pi ;
    case 15
        x = normrnd() * d ;
        y = normrnd() * ( n - 1 ) * D ;
        th = normrnd() * 2 * pi ;
    case 16
        x = poissrnd () * d ;
        y = poissrnd () * ( n - 1 ) * D ;
        th = poissrnd () * 2 * pi ;
    case 17
        x = raylrnd() * d ;
        y = raylrnd() * ( n - 1 ) * D ;
        th = raylrnd() * 2 * pi ;
    case 18
        x = trnd () * d ;
        y = trnd () * ( n - 1 ) * D ;
        th = trnd () * 2 * pi ;
    case 19
        x = unidrnd () * d ;
        y = unidrnd () * ( n - 1 ) * D ;
        th = unidrnd () * 2 * pi ;
    case 20
        x = unifrnd () * d ;
        y = unifrnd () * ( n - 1 ) * D ;
        th = unifrnd () * 2 * pi ;
    case 21
        x = weibrnd  () * d ;
        y = weibrnd  () * ( n - 1 ) * D ;
        th = weibrnd  () * 2 * pi ;
end
end