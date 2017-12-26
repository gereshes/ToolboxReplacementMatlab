function [ tv ] = isStdBusinessHours( dateAsDateTimeArray )
%This function determines whether the date and time is
%part of business hours. Business hours is defined as a weekday, Monday to 
%Friday, where the time is between 9Am to 5Pm. This function was written 
%because we were lacking access to the Matlab financial toolbox.
%
%dateAsDateTimeArray  - Is a Datetime Array. 
%
%tv - Is a boolian.
%
% Ari Rubinsztejn
% a.rubin1225@gmail.com
% www.gereshes.com

if isWorkDay(dateAsDateTimeArray) %checks to see if its a work day
    
    %converts the datetime array into the format we want
    dateAsDateTimeArray=datetime(dateAsDateTimeArray,'Format','HH,mm,ss');
    hours=hour(dateAsDateTimeArray);%pulls off hours
    minutes=minute(dateAsDateTimeArray);%pulls off minutes
    seconds=second(dateAsDateTimeArray);%pulls off seconds
    
    %checks if its durring business hours
    if (hours>=9 && hours<=17)
        tv=true;
        if (hours==17 && minutes==0 && seconds==0)
            tv=true;
        elseif (hours==17)
            tv=false;
        end
    else
        tv=false;
    end
else
    tv=false;
end

end

