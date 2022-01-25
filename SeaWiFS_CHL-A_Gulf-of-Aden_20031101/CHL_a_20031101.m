clear;clc;close all
%%
% MODIS_Chl_file_name = 'T2003305.L3m_DAY_CHL_chlor_a_4km.nc';
MODIS_Chl_file_name = 'S20031101.L3m_DAY_CHL_chlor_a_9km.nc';
MODIS_Chl_file = ['./SeaWiFS_CHL-A_Gulf-of-Aden_20031101/NASA_OceanColor_Data/' ...
    MODIS_Chl_file_name];
ncdisp(MODIS_Chl_file);
time = datetime([MODIS_Chl_file_name(2:5) MODIS_Chl_file_name(6:7) ...
    MODIS_Chl_file_name(8:9)],'InputFormat','yyyyMMdd');
%%
chlor_a = nc_varget(MODIS_Chl_file,'chlor_a');
lat_1 = nc_varget(MODIS_Chl_file,'lat');
lon_1 = nc_varget(MODIS_Chl_file,'lon');
% palette = nc_varget(MODIS_Chl_file,'palette');
lon_1(lon_1<0) = lon_1(lon_1<0) + 360;
%%
SSH_file = ['./SeaWiFS_CHL-A_Gulf-of-Aden_20031101/SSH_data/' ...
    'cmems_obs-sl_glo_phy-ssh_my_allsat-l4-duacs-0.25deg_P1D_20031101.nc'];
ncdisp(SSH_file)
lon_SSH = nc_varget(SSH_file,'longitude');
lat_SSH = nc_varget(SSH_file,'latitude');
ugos_SSH = nc_varget(SSH_file,'ugos');
vgos_SSH = nc_varget(SSH_file,'vgos');
[lon_SSH,lat_SSH] = meshgrid(lon_SSH,lat_SSH);
% load('AVISO_20031101.mat')
%%
LAT_lim = [8:1:16];
LON_lim = [42:1:53];
%%
fig = figure(1);
fig.PaperUnits = 'centimeters';
fig.PaperSize = [21 29.7]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig;
%%
ax1 = axes;
ax1.Position= [0.1 0.1 0.8 0.8];
m_proj('mercator','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(1) LAT_lim(end)]);
m_pcolor(lon_1,lat_1,log10(chlor_a));
c1 = colorbar;
% ---imread colormap---%
[X1,cmap1] = imread('delta.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
% ---imread colormap---%
c1.Label.String = 'mg/{m^{3}}';
% c1.Label.Position = [1.5 0.84];
% c1.Label.Rotation = 0;
hold on;
% m_quiver(lon,lat,u,v,'r');
m_quiver(lon_SSH,lat_SSH,permute(ugos_SSH,[2 3 1]),permute(vgos_SSH,[2 3 1]),'r');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title(string(time))
xlabel('Chlorophyll Concentration, OCI Algorithm (L3)')
ax1.FontSize = 15;
colorbar_tick_label = [];
for i = 1:length(c1.TickLabels)
   colorbar_tick_label(i) = str2num(c1.TickLabels{i}); 
end
set(c1,'ytick',colorbar_tick_label,'yticklabel',10.^colorbar_tick_label,'tickdir','out');
%% Output the figure
saveas(gcf,['Chlorophyll_Concentration_L3_20031101.jpg'])