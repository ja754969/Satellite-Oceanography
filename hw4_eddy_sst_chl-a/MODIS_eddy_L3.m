clear;clc;close all
%%
current_folder = pwd;
% cd([current_folder '/nc_file_DataSelection_20211109_071511_12958017'])
file_sst = dir('T*SST*.nc');
file_sst = file_sst.name;
ncdisp(file_sst)
file_chl = dir('T*chlor_a*.nc');
file_chl = file_chl.name;
ncdisp(file_chl)
%%
time = datetime('2005/01/27 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
lat = nc_varget(file_sst,'lat');
lon = nc_varget(file_sst,'lon');
sea_surface_temperature = nc_varget(file_sst,'sst');
%% 
LAT_lim = [-41:-0.5:-43];
LON_lim = [61.5:0.5:65];
%%
figure
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sea_surface_temperature)
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim)
colorbar
% caxis([28 32])
colormap(jet)
% CT = cbrewer('div', 'Spectral');
title('2005-01-27 SST')
%%
chlorophyll_concentration = nc_varget(file_chl,'chlor_a');
lat = nc_varget(file_chl,'lat');
lon = nc_varget(file_chl,'lon');
% chlorophyll_concentration = nc_varget(file_chl,'chl_ocx');
%%
figure
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,log10(chlorophyll_concentration))
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim)
colorbar
% caxis([28 32])
colormap(jet)

title('2005-01-27 CHL-a')