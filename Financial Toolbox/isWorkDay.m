function [ tv ] = isWorkDay( dateAsDateTimeArray )
%This function determines whether the date is a
%workday. A workday is defined as a weekday, Monday to Friday. This
%function was written because we were lacking access to the Matlab financial
%toolbox.
%
%dateAsDateTimeArray - Is a datetime array.
%
%tv - Is a boolian.
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

DayNumber = weekday(dateAsDateTimeArray);
if (DayNumber>=2 && DayNumber<=6)%checks if the day is between Monday to Friday
    tv=true;
else
    tv=false;
end

end

