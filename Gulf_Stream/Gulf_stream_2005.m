clear;clc;close all
%%
current_folder = pwd;
%%
% 2005/4/18 MODIS Aqua
MODIS_SST_file = 'AQUA_MODIS.20050418.L3m.DAY.SST.sst.4km.nc';
ncdisp(MODIS_SST_file)
%%
qual_sst = nc_varget(MODIS_SST_file,'qual_sst');
lat = nc_varget(MODIS_SST_file,'lat');
lon = nc_varget(MODIS_SST_file,'lon');
sst = nc_varget(MODIS_SST_file,'sst');
lon(lon<0) = lon(lon<0) + 360;
% [lon,lat] = meshgrid(lon,lat);
%%
AVISO_20050418 = load('AVISO_20050418.mat');
AVISO_20050418_lon = AVISO_20050418.lon;
AVISO_20050418_lat = AVISO_20050418.lat;
AVISO_20050418_u = AVISO_20050418.u;
AVISO_20050418_v = AVISO_20050418.v;
AVISO_20050418_adt = AVISO_20050418.adt;
%% 
LAT_lim = [34:1:44];
LON_lim = [360-75:1:360-55];
%%
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig
%%
ax1 = axes;
ax1.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(1) LAT_lim(end)]);
m_pcolor(lon,lat,sst);
%---imread colormap---%
[X1,cmap1] = imread('sst.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '1/s';
hold on;
m_quiver(AVISO_20050418_lon,AVISO_20050418_lat,AVISO_20050418_u,AVISO_20050418_v,'k');
hold on;
m_contour(lon,lat,sst,'k');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-04-18 SST')
ax1.FontSize = 15;
