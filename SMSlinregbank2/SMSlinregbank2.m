% ---------------------------------------------------------------------
% Book:         SMS(2)
% ---------------------------------------------------------------------
% Quantlet:     SMSlinregbank2
% --------------------------------------------------------------------
% Description:  SMSlinregbank2 computes a linear regression for length 
%               of diagonal of counterfeit bank notes (bank2.dat).
% ---------------------------------------------------------------------
% Usage:        -
% ---------------------------------------------------------------------
% Inputs:       bank2.dat
% ---------------------------------------------------------------------
% Output:       linear regression for length of diagonal of counterfeit
%               bank notes (bank2.dat).
% ---------------------------------------------------------------------
% Example:      7.19
% ---------------------------------------------------------------------
% Results:
% md1 =
%
%
% Linear regression model:
% y ~ 1 + x1 + x2 + x3 + x4 + x5
%
% Estimated Coefficients:
% Estimate    SE          tStat      pValue
% (Intercept)      47.345      34.935     1.3552       0.17859
% x1               0.3193     0.14831      2.153      0.033879
% x2             -0.50683     0.24829    -2.0412       0.04403
% x3              0.63375     0.20208     3.1361     0.0022856
% x4               0.3325    0.059634     5.5757    2.3528e-07
% x5              0.31793     0.10391     3.0598     0.0028866
%
%
% Number of observations: 100, Error degrees of freedom: 94
% Root Mean Squared Error: 0.471
% R-squared: 0.322,  Adjusted R-Squared 0.286
% F-statistic vs. constant model: 8.93, p-value = 5.76e-07
% ---------------------------------------------------------------------
% Keywords:    linear model, linear regression, least squares, R-squared
% ---------------------------------------------------------------------
% See also:    SMSlinregbank2, SMSlinregvocab, SMSprofil, SMSprofplasma,
%              SMStestcov, SMStestcov4i, SMStestcovwais, SMStestsim,
%              SMStestuscomp
% ---------------------------------------------------------------------
% Author:       Philipp Jackmuth
% ---------------------------------------------------------------------

% clear variables and close windows
clear all
close all
clc

% load data
bank2 = load('bank2.dat');

% split up dependent vs. independent variables for regression
X = bank2(101:200,1:5);
Y = bank2(101:200,6);

% compute linear regression
md1=LinearModel.fit(X,Y)
