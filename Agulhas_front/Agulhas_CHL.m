clear;clc;close all

% file_dir = dir('./MODIS_data_20071230_12_40/A*L2*OC.nc');
% filename = [file_dir.folder '/' file_dir.name];
% ncdisp(filename)
% %%
% 
% chlor_a = nc_varget(filename,'/geophysical_data/chlor_a');
% lon = nc_varget(filename,'/navigation_data/longitude');
% lat = nc_varget(filename,'/navigation_data/latitude');
% % flags_sst = nc_varget(filename,'/geophysical_data/flags_sst');
% % chlor_a(flags_sst < 0) = NaN;
%%
% [XXlon,YYlat] = meshgrid(lon,lat);
% chlor_a = griddata(lon,lat,chlor_a,XXlon,YYlat);

%%
LAT_lim_TARGET = [-31:-2:-37];
LON_lim_TARGET = [17:2:31];
[lon,lat,chlor_a] = L2_regrid_chlor_a('./MODIS_data_20071230_12_40/','A2007364124000.L2_LAC_OC.nc',0.01,LAT_lim_TARGET,LON_lim_TARGET);

% chlor_a = log10(chlor_a);

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
m_pcolor(lon,lat,log10(chlor_a));
c1 = colorbar;
% caxis([0 40])
%---imread colormap---%
[X1,cmap1] = imread('rainbow.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = 'mg/{m^3}';
hold on;
% m_quiver(AVISO_20050418_lon,AVISO_20050418_lat,AVISO_20050418_u,AVISO_20050418_v,'k');
% hold on;
% m_contour(lon,lat,sst,'k');
% hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2007-12-30 CHL-a')
ax1.FontSize = 15;
%%
[aspect,slope,gradN,gradE] = gradientm(lat,lon,chlor_a);
%%
figure
% contour(lon,lat,gradN)
%%
ax2 = axes;
ax2.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_contour(lon,lat,gradN,'k');
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
title('2007-12-30 CHL-a')
ax2.FontSize = 15;