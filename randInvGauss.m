function [x] = randInvGauss(mu, lambda, noSteps, noStreams)
%GENERATION OF RANDOM VALUES DISTRIBUTED ON AN INVERSE GAUSSIAN (WALD)

% INPUT PARAMETERS
% mn: real desired mean
% stdev: real desired standard deviation (NOT the natural parameter of the Wald distribution)
% Nsteps: number of rows for the matrix returned
% n: number of columns for the matrix returned

%=======CODE TO BE BLOCKED IF SCRIPT IS TO BE CALLED AS A FUNCTION======
% clc
% clear
% 
% mn=5;
% stdev=2;
% Nsteps=50;
% n=6;
%=======================================================================

normRandData = random('norm', 0, 1, noSteps, noStreams);% Random Gaussian data
y = normRandData.*normRandData;
x = mu + ((mu^2 * y)/(2*lambda)) -...
    ((mu/(2*lambda))*(sqrt((4*mu*lambda*y)+(mu^2*y.*y))));
z = random('unif',0,1,noSteps,noStreams);
for row = 1:noSteps
    for column = 1:noStreams
        if z(row, column) > mu./(mu+x(row, column))
            x(row,column) = (mu^2)/x(row, column);
        end
    end
end


%=======CODE TO BE BLOCKED IF SCRIPT IS TO BE CALLED AS A FUNCTION======
% mxw=mean(xw)
% sdxw=std(xw)
% mnrand=mean(nrandmtx)
% sdnrand=std(nrandmtx)
% hist(xw,20)
%=======================================================================