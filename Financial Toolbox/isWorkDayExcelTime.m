function [ tv ] = isWorkDayExcelTime( dateAsExcelTime )
%This function determines whether the date (given in excel time) is a
%workday. A workday is defined as a weekday, Monday to Friday. This
%function was written because we were lacking access to the Matlab financial
%toolbox.
%
%dateAsExcelTime - Is a double
%
%tv - Is a boolian.
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

dateAsDateTimeArray=datetime(dateAsExcelTime,'ConvertFrom','excel');%converts 
                                                                    %the date 
                                                                    %in excelTime 
                                                                    %to a datetime
DayNumber = weekday(dateAsDateTimeArray);
if (DayNumber>=2 && DayNumber<=6)%checks if the day is between Monday to Friday
    tv=true;
else
    tv=false;
end

end

