%%%%%%%%POPULATION%%%%%%%%%
clear %https://ourworldindata.org/world-population-growth
pop=load('pop_cont.csv'); %population data by continent for years 1750-2018
year=pop(:,1); %year 1750-2018
af=pop(:,2); %africa population
as=pop(:,3); %asia population
eu=pop(:,4); %europe population
na=pop(:,5); %north america population
sa=pop(:,6); %south america population
oc=pop(:,7); %oceania population
figure(1) %plot of continents population over year 0-2018
plot(year,af) % plot of africa pop
hold on
plot(year,as) %plot asia pop
hold on
plot(year,eu) %plot europe pop
hold on
plot(year,na) %plot north america pop
hold on
plot(year,sa) %plot south america pop
hold on
plot(year,oc) %plot oceania pop
legend('Africa','Asia','Europe','North America','South America','Oceania') %continets legend
xlabel ('Years')
ylabel ('Population')
title ('Population by Continent (Year 1750-2018)')

world=load('WorldPopAnnual.csv'); %data of total global population change from 1751-2015
year1=world(:,1); %global pop years 1751-2015
pop=world(:,2); %global population
figure(2)
plot(year1,pop); %plot of global population between 1751-2015
xlabel ('Years')
ylabel ('Population')
title ('Global Population (1751-2015)')
