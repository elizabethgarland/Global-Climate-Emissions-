%%%%%%%%%%Temp Anom%%%%%%%%%%%%%
anom=load('anom.csv'); %global temperature anomaly data for 1880-2016
year=anom(:,1); %years 1880-2016
temp=anom(:,2); %temperaure anomalies
bar(year,temp,'r') %bar graph of global temperature anomalies for 1880-2016
xlabel('Years')
ylabel('Temperature Anomolies (°C)')
title('Global Monthly Temperature Anomalies(1880-2016)')
%%https://www.ncdc.noaa.gov/cag/global/time-series/globe/land_ocean/ytd/12/1880-2016