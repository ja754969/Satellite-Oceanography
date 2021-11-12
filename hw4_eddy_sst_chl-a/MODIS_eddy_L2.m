clear;clc;close all
%%
current_folder = pwd;
%% AVISO data
AVISO_200501 = load('AVISO_200501.mat');
AVISO_200501_lon = AVISO_200501.A.lon';
AVISO_200501_lat = AVISO_200501.A.lat';
AVISO_200501_adt_u = AVISO_200501.A.adt_u';
AVISO_200501_adt_v = AVISO_200501.A.adt_v';
AVISO_200501_sla = AVISO_200501.A.sla';
%%
% cd([current_folder '/nc_file_DataSelection_20211109_071511_12958017'])
file_sst = dir('TERRA*20050127*L2*SST*.nc');
file_sst = file_sst.name;
ncdisp(file_sst)
%%
time = datetime('2005/01/27 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
lat = nc_varget(file_sst,'/navigation_data/latitude');
lon = nc_varget(file_sst,'/navigation_data/longitude');
sea_surface_temperature = nc_varget(file_sst,'/geophysical_data/sst');
%% 
LAT_lim = [-41:-0.5:-43];
LON_lim = [61.5:0.5:65];
%%
figure
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sea_surface_temperature)
c1 = colorbar;
caxis([13 18])
colormap(m_colmap('diverging'))
% CT = cbrewer('div', 'Spectral');
title('2005-01-27 SST')
c1.Label.String = 'temperature (^oC)';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim)

%%
file_chl = dir('T2005*L2*OC*.nc');
file_chl = file_chl.name;
ncdisp(file_chl)
%%
% time = datetime('2005/01/27 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
lat = nc_varget(file_chl,'/navigation_data/latitude');
lon = nc_varget(file_chl,'/navigation_data/longitude');
chlorophyll_concentration  = nc_varget(file_chl,'/geophysical_data/chlor_a');

%%
figure
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,log10(chlorophyll_concentration))
% c2 = colorbar('TickLabels',{num2str(),num2str(),num2str(),num2str(),num2str()});
c2 = colorbar;
% caxis([28 32])
% colormap(cbrewer('seq','YlGnBu'))
% CT = cbrewer('seq', 'YlGnBu', 10,'cubic');
% colormap(flipud(CT))
%---imread colormap---%
[X,cmap] = imread('cbcBrBG.png');
RGB = ind2rgb(X,cmap);
colormap(reshape(RGB(10,:,:),size(RGB,2),3));
%---imread colormap---%
c2.Label.String = 'concentration (mg/m^3)';
colorbar_tick_label = [0.3,0.4,0.5,0.6,0.7,0.8,0.9];
% c2.Ticks = log10(colorbar_tick_label);
% c2.TickLabels = colorbar_tick_label;
set(c2,'ytick',log10(colorbar_tick_label),'yticklabel',colorbar_tick_label,'tickdir','out');
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim)

title('2005-01-27 CHL-a')
%%
figure
% quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v)
contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k');