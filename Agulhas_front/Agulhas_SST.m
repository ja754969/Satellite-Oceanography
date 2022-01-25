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

LAT_lim_TARGET = [-31:-2:-37];
LON_lim_TARGET = [17:2:31];
    max_xlon = max(LON_lim_TARGET);min_xlon = min(LAT_lim_TARGET);
    max_ylat = max(LON_lim_TARGET);min_ylat = min(LAT_lim_TARGET);
%% 經緯度格點化
grid_range = 0.01;
    % Setting a range of lontitude.
    xlon_range = fix(min_xlon):grid_range:fix(max_xlon +1);
    % Setting a range of latitude.
    ylat_range = fix(max_ylat +1):-grid_range:fix(min_ylat);
    % Preprocessing of grid point data.
    new_xlon = xlon_range'';
    % Preprocessing of grid point data.
    new_ylat = ylat_range;
    % Create 2-D grid coordinates based on the coordinates contained in new_xlon and new_ylat.
    [XX_lon,YY_lat] = meshgrid(new_xlon,new_ylat);

% [XXlon,YYlat] = meshgrid(lon,lat);
sst = griddata(lon,lat,sst,XX_lon,YY_lat);
%%
lon = XX_lon;
lat = YY_lat;
%%

% [lon,lat,sst] = L2_regrid_sst('./MODIS_data_20071230_12_40/','AQUA_MODIS.20071230T124007.L2.SST.nc',0.01,LAT_lim_TARGET,LON_lim_TARGET);

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
ax1 = axes;
ax1.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sst);
c1 = colorbar;
caxis([6 26])
%---imread colormap---%
[X1,cmap1] = imread('sst.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '^{o}C';
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2007-12-30 SST')
ax1.FontSize = 15;
%%
[aspect,slope,gradN,gradE] = gradientm(lat,lon,sst);
%%
figure
% contour(lon,lat,gradN)
%%
ax2 = axes;
ax2.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,gradN);shading flat;
hold on;
[c,h] = m_contour(lon,lat,gradN,'k');
% h.LevelStep = 
% c1 = colorbar;
% caxis([6 26])
% %---imread colormap---%
% [X1,cmap1] = imread('sst.png');
% RGB1 = ind2rgb(X1,cmap1);
% colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
% %---imread colormap---%
% c1.Label.String = '^{o}C';
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2007-12-30 SST')
ax2.FontSize = 15;