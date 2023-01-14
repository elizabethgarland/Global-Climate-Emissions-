%%%%AFRICA ONLY%%%%
%https://cdiac.ess-dive.lbl.gov
clear
africa=load('Africa.csv'); %columns: Year, TotalCO2, solid, liquid, gas, cement production,gas flaring, per capita (IN METRIC TONS OF CARBON)
year=africa(:,1);
total=africa(:,2); %total CO2 emissions (thousand metric tons)
solid=africa(:,3); %solid fuel emissions
liquid=africa(:,4); %liquid fuel emissions (thousand metric tons)
gas=africa(:,5); %gas fuel emissions (thousand metric tons)
cement=africa(:,6); %cement production emissions (thousand metric tons)
flaring=africa(:,7); %gas flaring emissions(thousand metric tons)
per_cap=africa(:,8); %per capita emissions metric tons of carbon
figure(1)
plot(year,total)
xlabel('Year')
ylabel('CO2 (thousand metric tons of C)')
title('Total CO2 Emissions in Africa from Fossil Fuels and Cement Production')
figure(2)
plot(year,solid) %solid fuel
hold on
plot(year,liquid) %liquid fuel
hold on 
plot(year, gas)%gas fuel
hold on
plot(year, cement) %cement production
hold on
plot(year, flaring) %gas flaring
title('Africa Carbon Emissions by Emitter')
xlabel('Year')
ylabel('Carbon (thousand metric ton)')
legend('Solid','Liquid','Gas','Cement','Gas Flaring')
figure(3)
plot(year,per_cap) %per capita emissions 
title('Per Capita Carbon Emissions In Africa')
xlabel('Year')
ylabel('Carbon (metric tons)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%