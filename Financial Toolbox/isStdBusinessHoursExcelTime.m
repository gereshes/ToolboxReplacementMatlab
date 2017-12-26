function [ tv ] = isStdBusinessHoursExcelTime( dateAsExcelTime )
%This function determines whether the date and time (given in excel time) is
%part of business hours. Business hours is defined as a weekday, Monday to 
%Friday, where the time is between 9Am to 5Pm. This function was written 
%because we were lacking access to the Matlab financial toolbox.
%
%dateAsExcelTime - Is a double.
%
%tv - Is a boolian.
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

if isWorkDayExcelTime(dateAsExcelTime) %checks to see if its a weekday
    
    %takes the fraction of a day from the excel time
    fractionOfADayCovered= dateAsExcelTime-(floor(dateAsExcelTime));
    
    %checks whether the time is during business  hours
    if (fractionOfADayCovered>=.375 && fractionOfADayCovered<=.70833334)
        tv=true;
    else
        tv=false;
    end
else
    tv=false;
end

end

