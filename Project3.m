%%%%%%%%%%%%%%%%EMISSIONS BY TRADE/ IMPORT-EXPORT%%%%%%%%%%%%%%%
clear %https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions

%Amount of CO2 emissions embedded in trade- positive = Net importer of CO2. negative= net exporter of CO2 
af=load('africa_trade.csv'); %africa trade data
as=load('asia_trade.csv'); %asia trade data
eu=load('europe_trade.csv'); %europe trade data
na=load('na_trade.csv'); %north america trade data 
sa=load('sa_trade.csv'); %south america trade data
oc=load('oceania_trade.csv'); %oceania trade data 

year=af(:,1); %africa years 1990-2016
emission=af(:,2); %africa emissions ofr import/export in trade
plot(year,emission) %plot of years vs import/export emissions for trade africa
hold on

year=as(:,1); %asia years
emission=as(:,2); %asia emissions
plot(year,emission) %plot of trade emissions asia
hold on

year=eu(:,1); %europe year
emission=eu(:,2); %europe emissions
plot(year,emission) %plot of trade emissions for europe
hold on

year=na(:,1); %north america years
emission=na(:,2); %north america emissions
plot(year,emission) %plot of trade emissions for north america
hold on

year=sa(:,1); %south america years
emission=sa(:,2); % south america emissions
plot(year,emission) %plot of trade emissions for south america 
hold on

year=oc(:,1); %oceania years
emission=oc(:,2); %oceania emissions
plot(year,emission) %plot of trade emissions for oceania

legend('Africa','Asia','Europe','North America','South America','Oceania')
xlabel('Years') %1990-2016
ylabel('CO2 Emissions(100 Million Tons)')
title('Continents Net Import and Export of Emissions in Trade')
