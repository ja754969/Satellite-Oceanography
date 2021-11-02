%% ETOPO1 toolbox 
% https://www.ngdc.noaa.gov/mgg/global/relief/ETOPO1/data/ice_surface/grid_registered/binary/
clear;clc;close all
%% Load L2 data
% filename=('AQUA_MODIS.20210922T045001.L2.SST.NRT.nc');
% ncdump(filename)
% sst=ncread(filename,'/geophysical_data/sst');
% lon=ncread(filename,'/navigation_data/longitude');
% lat=ncread(filename,'/navigation_data/latitude');
%% projection
% m_proj('set') % miller, UTM (not safe for global), and Mercator
m_proj('miller','lon',[118 123],'lat',[20 30]);
%% pcolor
% m_pcolor(lon,lat,sst)
%% Topography
% % Type 'open m_etopo2.m' and revise the variable PATHNAME
% [LONGLAT,z] = m_elev('contourf',50);
% [CS,CH] = m_etopo2('contourf');
% [CS,CH] = m_etopo2('contourf',50);
% [CS,CH] = m_etopo2('contourf',100,'edgecolor','none');
% [CS,CH] = m_etopo2('contour',[-100, -200, -500, -1000]); % countour
% [CS,CH] = m_etopo2('contourf',[-7000:1000:-1000 -500 -200 0],'edgecolor','none');
[CS,CH] = m_etopo2('shadedrelief'); % add shade on the relief
%% colormap
% colormap = 'parula';
colormap(m_colmap('jet',5)); 
caxis([-1000 0])
%% colorbar
h = colorbar;
% clabel(CS,CH,'LabelSpacing',1000) % set the interval of displayed label
h.Position % [x,y,寬,長]
%% MOdify the variables 'CS' and 'CH'
% set(CH,'linecolor','r');
% set(CH,'levelstep',100);
%% coastline
% m_coast
% m_usercoast
% m_gshhs
% m_gshhs('color',[]) % 畫線
% m_gshhs('patch',[]) % 填滿
% m_gshhs('speekle',[]) % 畫線加斑點
% crude
% low
% intermediate
% high
% full

% m_gshhs_i('color','k');
% m_gshhs_i('speckle','color','k');
m_gshhs_i('patch',[.8 .8 .8]);

%% grid line
% m_grid('get')
% % tickstyle : dd, dm, da
% % backgroundcolor
% % linewidth 邊框粗細
m_grid('box','fancy','tickdir','in')
% m_ungrid;

