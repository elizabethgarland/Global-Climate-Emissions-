%%%%%1990 and 2010 sector emissions pie charts%%%%%%
clear %http://www.fao.org/faostat/en/?#data/EM
sector1990=load('1990_percent sector.csv'); %1=Energy; 2=Transportation; 3=Residential; 4=Industrial; 5=Waste; 6=other; 7=international bunker; 8=agriculture; 9=land use
sector2010=load('2010_percentsector.csv'); % ''
en1990=sector1990(1,2); %Energy sector for 1990
trans1990=sector1990(2,2); %transportation sector for 1990
res1990=sector1990(3,2); %residential sector for 1990
ind1990=sector1990(4,2); %industrial sector for 1990
waste1990=sector1990(5,2);%waste sector for 1990
other1990=sector1990(6,2);%other/misc sector for 1990
inter1990=sector1990(7,2);%international bunker sector for 1990
agr1990=sector1990(8,2);%agriculutre sector for 1990
land1990=sector1990(9,2);%land use sector for 1990
x=[en1990 trans1990 res1990 ind1990 waste1990 other1990 inter1990 agr1990 land1990]; %section of pie chart- sectors in 1990
figure(1)
labels={'Energy (45%)','Transportation (14%)','Residential (12%)','Industrial (5%)','Waste, Other, Agriculture (<1%)',' ','International Bunkers (2%)',' ', 'Land Use (21%)'}; %1990 pie chart labels
pie(x,labels) %pie chart of carbon emission by sector in 1990
title('1990 Share of CO2 Emission by Sector')
en10=sector2010(1,2);%Energy sector for 2010
trans10=sector2010(2,2);%transportation sector for 2010
res10=sector2010(3,2);%residential sector for 2010
ind10=sector2010(4,2);%industrial sector for 2010
waste10=sector2010(5,2);%waste sector for 2010
other10=sector2010(6,2);%other/misc sector for 2010
inter10=sector2010(7,2);%international bunker sector for 2010
agr10=sector2010(8,2);%agriculure sector for 2010
land10=sector2010(9,2);%land use sector for 2010
x=[en10 trans10 res10 ind10 waste10 other10 inter10 agr10 land10]; %sections for pie chart 2010
figure(2)
labels={'Energy (53%)','Transportation (15%)','Residential (9%)','Industrial (7%)','Waste, Other, Agriculture (<1%)',' ','International Bunkers (3%)',' ','Land Use (14%)'};
pie(x,labels) %pie chart of carbon emissions by sector in 2010
title('2010 Share of CO2 Emission by Sector')
