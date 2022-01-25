clear;clc;close all

file_dir = dir('./MODIS_data_20071230_12_40/*.L2*SST.nc');
filename = [file_dir.folder '/' file_dir.name];
ncdisp(filename)
%%
sst = nc_varget(filename,'/geophysical_data/sst');
lon = nc_varget(filename,'/navigation_data/longitude');
lat = nc_varget(filename,'/navigation_data/latitude');
flags_sst = nc_varget(filename,'/geophysical_data/flags_sst');
sst(flags_sst < 0) = NaN;
% l2_flags');
%%
file_dir = dir('./MODIS_data_20071230_12_40/A*L2*OC.nc');
filename = [file_dir.folder '/' file_dir.name];
ncdisp(filename)
%%
chlor_a = nc_varget(filename,'/geophysical_data/chlor_a');
lon = nc_varget(filename,'/navigation_data/longitude');
lat = nc_varget(filename,'/navigation_data/latitude');
%%
LAT_lim = [-31:-2:-37];
LON_lim = [17:2:31];
%%
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig
%%
[aspect,slope,gradN_sst,gradE_sst] = gradientm(lat,lon,sst);
[aspect,slope,gradN_chlor_a,gradE_chlor_a] = gradientm(lat,lon,chlor_a);
%%
% contour(lon,lat,gradN)
%%
ax1 = axes;
ax1.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
[c_sst,h_sst] = m_contour(lon,lat,gradN_sst,'r');
hold on;
[c_chlor_a,h_chlor_a] = m_contour(lon,lat,gradN_chlor_a,'b');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','out','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
legend([h_sst h_chlor_a],...
    {'SST meridional gradient','Chlorophyll-a meridional gradient'},'Location','best')
title('2007-12-30 Fronts')
ax1.FontSize = 15;
%%
mkdir('./result');
saveas(gcf,'./result/20071230_front_Agulhas.jpg');