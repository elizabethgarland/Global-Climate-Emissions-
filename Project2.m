%%%%%%%%%EMISSION BY REGION%%%%%%%%%%%
clear %https://cdiac.ess-dive.lbl.gov/trends/emis/tre_regional.html
figure (1)
africa=load('Africa.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=africa(:,1);
total=africa(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total,'-')
hold on

asia=load('CentrallyPlannedAsia.csv');  %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=asia(:,1); %years for asia
total=asia(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total,'r')
hold on

devam=load('DevAmerica.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=devam(:,1); %years for developing america
total=devam(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

fareast=load('FarEast.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=fareast(:,1); %years for far east
total=fareast(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

middle=load('MiddleEast.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=middle(:,1); %years for middle east
total=middle(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

noam=load('NorthAmerica.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=noam(:,1); %year for north america
total=noam(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

oceania=load('Oceania.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=oceania(:,1); %years for oceania
total=oceania(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

westeu=load('WesternEurope.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=westeu(:,1); %years for west europe
total=westeu(:,2); %total CO2 emissions (thousand metric tons)
plot(year,total)
hold on

legend('Africa','Central Asia','Developing America','Far East','Middle East','North America','Oceania','Western Europe')
xlabel('Years') %1751-2014
ylabel('CO2 Emissions (thousand metric tons)') 
title('Total CO2 Emissions from Regions of the World')
%%%%%%%%%%%%%%%%%%CDIAC DATA%%%%%%%%%%%%%%%%%