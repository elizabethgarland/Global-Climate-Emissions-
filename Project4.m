%%%%%%%%%%%%%%%%%%EMISSIONS BY SECTOR%%%%%%%%%%%%%%
clear %http://www.fao.org/faostat/en/?#data/EM
energy=load('energy_sector.csv'); %energy sec data
trans=load('transport_sector.csv'); %transportation sec data
res=load('residential_sector.csv');%resudential sec data
indust=load('industrial_sector.csv');%industrial sec data
waste=load('waste_sector.csv');%waste sec data
other=load('other_sector.csv');%other/misc sec data
inter=load('international_sector.csv');%internation bunker sec data
agr=load('agriculture_sector.csv');%agruculture sec data
land=load('landuse_sector.csv');%land use sec data
forrest=load('forrest_sector.csv');%forest sec data

figure(1) %plot of emissions by sector over 1990-2010
year=energy(:,1); %energy years
emission=energy(:,2); %energy emissions -gigagrams
plot(year,emission,'^-') %plot of the emissions of the energy sector
hold on

year=trans(:,1);
emission=trans(:,2);%transportation emissions -gigagrams
plot(year,emission,'>-') %plot of the emissions of the transportation sector
hold on

year=res(:,1);
emission=res(:,2);%residential emissions -gigagrams
plot(year,emission,'k<-')%plot of the emissions of the residential sector
hold on

year=indust(:,1);
emission=indust(:,2);%industrial emissions -gigagrams
plot(year,emission,'b.-')%plot of the emissions of the industry sector
hold on

year=waste(:,1);
emission=waste(:,2);%waste emissions -gigagrams
plot(year,emission,'v-')%plot of the emissions of the waste sector
hold on

year=other(:,1);
emission=other(:,2);%other emissions -gigagrams
plot(year,emission,'r+-')%plot of the emissions of the misc sectors
hold on

year=inter(:,1);
emission=inter(:,2);%international bunker emissions -gigagrams
plot(year,emission,'ks-')%plot of the emissions of the international bunker sector
hold on

year=agr(:,1);
emission=agr(:,2);%agriculture emissions -gigagrams
plot(year,emission,'bd-')%plot of the emissions of the agriculture sector
hold on

year=land(:,1);
emission=land(:,2);%land use emissions -gigagrams
plot(year,emission,'mx-')%plot of the emissions of the land use sector
hold on

year=forrest(:,1);
emission=forrest(:,2);%forest emissions -gigagrams
plot(year,emission,'go-')%plot of the emissions of the forest sector

xlabel('Year')
ylabel('Emission of CO2 (gigagrams)')
title('Global CO2 Emissions by Sector') %plot of all sectors emissions
legend('Energy','Transportation','Residential','Industrial','Waste','Other','International','Argriculture','Land Use','Forrest') %legend

