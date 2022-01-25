clear;clc;close all
%%
filename = 'AQUA_MODIS.20211121T163001.L2.SST.NRT.nc';
ncdisp(filename)
qual_sst = nc_varget(filename,'/geophysical_data/qual_sst');
lat = nc_varget(filename,'/navigation_data/latitude');
lon = nc_varget(filename,'/navigation_data/longitude');
sst = nc_varget(filename,'/geophysical_data/sst');
lon(lon<0) = lon(lon<0) + 360;

sst = nc_varget(filename,'/scan_line_attributes/year');
sst = nc_varget(filename,'/scan_line_attributes/day');
%%
sst(qual_sst>=2) = NaN;

LAT_lim = [-25:-5:-40];
LON_lim = [360-55:10:360-20];
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
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sst);
c1 = colorbar;
caxis([18 22])
%---imread colormap---%
[X1,cmap1] = imread('sst.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '^{o}C';
hold on;
% m_quiver(AVISO_20050418_lon,AVISO_20050418_lat,AVISO_20050418_u,AVISO_20050418_v,'k');
% hold on;
% m_contour(lon,lat,sst,'k');
% hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2021-11-21 SST')
ax1.FontSize = 15;