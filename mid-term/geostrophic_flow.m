clear;clc;close all
%%
current_folder = pwd;
%% AVISO data
AVISO_200501 = load('AVISO_200501.mat');
AVISO_200501_lon = AVISO_200501.A.lon;
AVISO_200501_lat = AVISO_200501.A.lat;
AVISO_200501_adt = AVISO_200501.A.adt;
AVISO_200501_adt_u = AVISO_200501.A.adt_u;
AVISO_200501_adt_v = AVISO_200501.A.adt_v;
AVISO_200501_sla = AVISO_200501.A.sla;
spd_provided = sqrt(AVISO_200501_adt_u.^2+AVISO_200501_adt_v.^2);
avg_spd_provided = nanmean(spd_provided(:));
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
file_chl = dir('T2005*L2*OC*.nc');
file_chl = file_chl.name;
ncdisp(file_chl)
%%
% time = datetime('2005/01/27 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
lat = nc_varget(file_chl,'/navigation_data/latitude');
lon = nc_varget(file_chl,'/navigation_data/longitude');
chlorophyll_concentration  = nc_varget(file_chl,'/geophysical_data/chlor_a');
%% Read data
adt_cal = AVISO_200501_adt;
adt_cal(find(adt_cal<0))=NaN;
AVISO_200501_lat_cal = AVISO_200501_lat;
%% variables
dx = 0.25*110*1000; % [(resolution)*(degree_length, unit is km)*(1 km)]
dy = 0.25*110*1000; % [(resolution)*(degree_length, unit is km)*(1 km)]
%% Calculate the gradient of adt in x and y-dir
% n x k data → (n-1) x (k-1) data
% y-dir : latitude is arranged from small to large and going right.
dhdy = (adt_cal(:,2:end)-adt_cal(:,1:end-1))/dy; %% size: (n)x(k-1)
% ADT gradient along y direction (meridional).

% x-dir : longitude is arranged from small to large and going down.
dhdx = (adt_cal(2:end,:)-adt_cal(1:end-1,:))/dx; %% size: (n-1)x(k)
% ADT gradient along x direction (zonal).% x 方向(經度方向)的絕對動力高度(ADT)梯度

% Delete the rest of the data to match the dimension
dhdy = dhdy(2:end,:); %% change size to: (n-1) x (k-1)
dhdx = dhdx(:,2:end); %% change size to: (n-1) x (k-1)
%% Set Parameters : Angular speed of Earth's rotation(Omega)、f = 2Ωsin(Φ)
% 23 hr 56 min = 86160 sec
omega = 2*pi/86400; % 地球角速度(Omega)
% omega = (2 x pi)/T = 2 x 3.14/86160 = 7.29 x 10^-5 (s^-1)
g = 9.8;
f = 2*omega*sind(AVISO_200501_lat_cal(2:end,2:end)); %% size : (n-1) x (k-1)
%%  Calculate velocities and speeds (ADT current velocity)
estimated_v = g * dhdx./f;   % v 方向的地轉流速
estimated_u = - g * dhdy./f; % u 方向的地轉流速
spd = sqrt(estimated_u.^2 + estimated_v.^2);
avg_spd = nanmean(reshape(spd,size(dhdy,1)*size(dhdy,2),1));
%%
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig
ax1 = axes;
ax1.Position= [0.0175 0.55 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sea_surface_temperature)
c1 = colorbar;
caxis([13 18])
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = 'temperature (^oC)';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 SST')
ax1.FontSize = 15;
%%
ax2 = axes;
ax2.Position= [0.0175 0.05 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,sea_surface_temperature)
c1 = colorbar;
caxis([13 18])
% CT = cbrewer('div', 'Spectral');
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax2,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = 'temperature (^oC)';
hold on;
m_quiver(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),...
    estimated_u,estimated_v,'k');
hold on;
m_contour(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),...
    AVISO_200501_sla(2:end,2:end),'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 SST (estimated geostrophic current)')
ax2.FontSize = 15;
%%
ax3 = axes;
ax3.Position= [0.55 0.55 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,log10(chlorophyll_concentration))
c2 = colorbar;
%---imread colormap---%
[X2,cmap2] = imread('cbcBrBG.png');
RGB2 = ind2rgb(X2,cmap2);
colormap(ax3,reshape(RGB2(10,:,:),size(RGB2,2),3));
%---imread colormap---%
c2.Label.String = 'concentration (mg/m^3)';
colorbar_tick_label = [0.2,0.3,0.4,0.6,0.8,1,1.2];
set(c2,'ytick',log10(colorbar_tick_label),'yticklabel',colorbar_tick_label,'tickdir','out');
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 CHL-a')
ax3.FontSize = 15;
%%
ax4 = axes;
ax4.Position= [0.55 0.05 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,log10(chlorophyll_concentration))
c2 = colorbar;
%---imread colormap---%
[X2,cmap2] = imread('cbcBrBG.png');
RGB2 = ind2rgb(X2,cmap2);
colormap(ax4,reshape(RGB2(10,:,:),size(RGB2,2),3));
%---imread colormap---%
c2.Label.String = 'concentration (mg/m^3)';
colorbar_tick_label = [0.2,0.3,0.4,0.6,0.8,1,1.2];
set(c2,'ytick',log10(colorbar_tick_label),'yticklabel',colorbar_tick_label,'tickdir','out');
hold on;
m_quiver(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),...
    estimated_u,estimated_v,'k');
hold on;
m_contour(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),...
    AVISO_200501_sla(2:end,2:end),'k','ShowText','on');
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 CHL-a (estimated geostrophic current)')
ax4.FontSize = 15;
%% Output the figure
print('image','-dtiffn','-r300')
print('image','-dpdf','-fillpage')
%% Compare u and v
u_diff = estimated_u - AVISO_200501_adt_u(2:end,2:end);
v_diff = estimated_v - AVISO_200501_adt_v(2:end,2:end);
fig_comp = figure;
fig_comp.PaperUnits = 'centimeters';
fig_comp.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig_comp.PaperType = '<custom>';
fig_comp.WindowState = 'maximized';
fig_comp
ax1 = axes;
ax1.Position= [0.01 0.25 0.45 0.45];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)],...
    'fontsize',40);
m_pcolor(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),u_diff)
c1 = colorbar('southoutside');
%---imread colormap---%
[X,cmap] = imread('cool-warm-d15.png');
RGB = ind2rgb(X,cmap);
colormap(ax1,reshape(RGB(10,:,:),size(RGB,2),3));
%---imread colormap---%
c1.Label.String = 'm/s';
c1.Position = [0.05 0.1 0.85 0.02];
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 geostrophic current difference (u component)')
ax2 = axes;
ax2.Position= [0.52 0.25 0.45 0.45];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(AVISO_200501_lon(2:end,2:end),AVISO_200501_lat(2:end,2:end),v_diff)
% c2 = colorbar('southoutside');
%---imread colormap---%
colormap(ax2,reshape(RGB(10,:,:),size(RGB,2),3));
%---imread colormap---%
colorbar_tick_label = [-0.3,-0.2,-0.1,0,0.1,0.2,0.3];
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 geostrophic current difference (v component)')
ax1.FontSize = 20;ax2.FontSize = 20;
ax1.LineWidth = 2;ax2.LineWidth = 2;
caxis(ax1,[-0.3 0.3])
caxis(ax2,[-0.3 0.3])
%% Timescale
latitude_s = 43;
T_sec = 2*pi/(2*2*pi/86400*sind(latitude_s)) % seconds
T_hour = 2*pi/(2*2*pi/86400*sind(latitude_s))/60/60 % hours
%% Output the figure
print('u_and_v_compare','-dtiffn','-r300')
print('u_and_v_compare','-dpdf','-fillpage')