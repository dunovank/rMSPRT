function [meansNullCh, meansPrefCh, stdsNullCh, stdsPrefCh] =...
    paramRepository(paramCase)
% parameter repository
%
% syntax:
%[meansNullCh, meansPrefCh, stdsNullCh, stdsPrefCh] =...
%   paramRepository(paramCase)
%
% where paramCase can be:
% %......'mt': computed from MT data
% %......'mtInfoDeplN2': after information depletion for N = 2
% %......'mtInfoDeplN4': after information depletion for N = 4

% parameters for preferred channel (same in all cases)
% means of preferred channel
meansPrefCh = [54.1067812950675;...
  51.9555167200400;46.1073617021512;...
  37.7431198991798;29.8554021786382];
% standard deviations of preferred channel
stdsPrefCh = [33.1325606188147;...
  32.1756309152138;30.4920600270835;...
  28.0096721079346;25.9790487446720];

% choose
switch paramCase
    case 'mt'
    % means of null channel
    meansNullCh = [59.3736631745858;...
        62.9023641601734;65.5267578611166;...
        70.1465464403720;83.4519960352983];
    % standard deviations of null channel
    stdsNullCh = [34.5386065496385;...
        35.3233041337630;36.1434994400871;...
        37.1454736402515;40.6329345670797];     

    case 'mtInfoDeplN2'
    % means of null channel
    meansNullCh = [58.98362;...
        60.59836;60.30201;...
        62.00465;75.51389];
    % standard deviations of null channel
    stdsNullCh = [34.43448;...
        34.66081;34.62299;...
        34.84995;38.46257];
        
    case 'mtInfoDeplN4'
    % means of null channel
    meansNullCh = [58.53778;...
        59.83197;58.31644;...
        59.87656;71.80696];
    % standard deviations of null channel
    stdsNullCh = [34.31546;...
        34.44044;34.04515;...
        34.24996;37.44906];
        
    otherwise% return 'mt' parameters by default
    % means of null channel
    meansNullCh = [59.3736631745858;...
        62.9023641601734;65.5267578611166;...
        70.1465464403720;83.4519960352983];
    % standard deviations of null channel
    stdsNullCh = [34.5386065496385;...
        35.3233041337630;36.1434994400871;...
        37.1454736402515;40.6329345670797];        
        
        % give warning of default
        warning(strcat('paramCase =  ', paramCase, ' not recognized, parameters for paramCase = ''mt'' returned instead'))
end