function [ monthStr ] = monthNun2monthStr( monthNum )
%This function converts a month from its number to its name.
%For some reason the Matlab month function wasn't working as so I just
%quickly coded this up.
%
%monthNum - Is an integer.
%
%monthStr - Is a string.
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

monthDict={'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};

try 
    monthNum=str2double(monthNum);%checks to make sure the monthNum isnt a str
    monthStr=monthDict{monthNum};%converts the monthNum into the monthStr
catch
    monthStr=monthDict{monthNum};%converts the monthNum into the monthStr
end


end

