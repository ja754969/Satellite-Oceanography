clear;clc;close all
%%
current_folder = pwd;
%% AVISO data AVISO_200501.mat
AVISO_200501 = load('AVISO_200501.mat');
AVISO_200501_lon = AVISO_200501.A.lon;
AVISO_200501_lat = AVISO_200501.A.lat;
AVISO_200501_adt = AVISO_200501.A.adt;
AVISO_200501_adt_u = AVISO_200501.A.adt_u;
AVISO_200501_adt_v = AVISO_200501.A.adt_v;
AVISO_200501_sla = AVISO_200501.A.sla;
AVISO_200501_sla_u = AVISO_200501.A.sla_u;
AVISO_200501_sla_v = AVISO_200501.A.sla_v;
spd_provided = sqrt(AVISO_200501_adt_u.^2+AVISO_200501_adt_v.^2);
%% 
LAT_lim = [-41:-0.5:-43];
LON_lim = [61.5:0.5:65];
%% 
adt = AVISO_200501_adt;
adt(find(adt<0))=NaN;
% spheroid = referenceEllipsoid(wgs84Ellipsoid);
% [aspect,slope,gradN,gradE] = gradientm(AVISO_200501_lat,AVISO_200501_lon,AVISO_200501_adt);
%% 
[aspect_u,slope_u,gradN_u,gradE_u] = gradientm(AVISO_200501_lat,AVISO_200501_lon,AVISO_200501_adt_u);
[aspect_v,slope_v,gradN_v,gradE_v] = gradientm(AVISO_200501_lat,AVISO_200501_lon,AVISO_200501_adt_v);
%% Three kinematic properties
vorticity = gradE_v - gradN_u;
strain_normal = gradE_u - gradN_v;
strain_shear = gradE_v + gradN_u;
W = strain_normal.^2 + strain_shear.^2 - vorticity.^2;
%%
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig
%% strain (normal)
ax1 = axes;
ax1.Position= [0.0175 0.55 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(AVISO_200501_lon,AVISO_200501_lat,strain_normal);
c1 = colorbar;
caxis([-1.5*10^-5 1.5*10^-5])
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax1,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '1/s';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 strain (normal)')
ax1.FontSize = 15;
%% Vorticity
ax2 = axes;
ax2.Position= [0.0175 0.05 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(AVISO_200501_lon,AVISO_200501_lat,vorticity);
c1 = colorbar;
caxis([-1.5*10^-5 1.5*10^-5])
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax2,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '1/s';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 Vorticity')
ax2.FontSize = 15;
%% Strain (shear)
ax3 = axes;
ax3.Position= [0.55 0.55 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(AVISO_200501_lon,AVISO_200501_lat,strain_shear);
c1 = colorbar;
caxis([-1.5*10^-5 1.5*10^-5])
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax3,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '1/s';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 Strain (shear)')
ax3.FontSize = 15;
%% W (strain - vorticity)
ax4 = axes;
ax4.Position= [0.55 0.05 0.4 0.4];
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(AVISO_200501_lon,AVISO_200501_lat,W);
c1 = colorbar;
caxis([-12*10^-10 12*10^-10])
%---imread colormap---%
[X1,cmap1] = imread('temp_19lev.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax4,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '1/{s^2}';
hold on;
m_quiver(AVISO_200501_lon-0.125,AVISO_200501_lat-0.125,AVISO_200501_adt_u,AVISO_200501_adt_v,'k');
hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 W parameter (strain - vorticity)')
ax4.FontSize = 15;
%% EKE calculate

EKE = 0.5*(AVISO_200501_sla_u.^2 + AVISO_200501_sla_v.^2);

%% Figure 2
fig = figure;
fig.PaperUnits = 'centimeters';
fig.PaperSize = [29.7 21]; % A4 papersize (horizontal,21-by-29.7 cm,[width height])
fig.PaperType = '<custom>';
fig.WindowState = 'maximized';
fig
%% Eddy Kinetic Energy
ax = axes;
ax.Position= [0.1 0.1 0.8 0.8];
m_proj('miller','lon',[60 66],'lat',[-45 -40]);
m_pcolor(AVISO_200501_lon,AVISO_200501_lat,EKE);
c1 = colorbar;
caxis([0 0.5])
%---imread colormap---%
[X1,cmap1] = imread('temperature.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(ax,reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = '{m^2}/{s^2}';
hold on;
m_quiver(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla_u,AVISO_200501_sla_v,'k');
hold on;
% m_contour(AVISO_200501_lon,AVISO_200501_lat,AVISO_200501_sla,'k');
% hold on;
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'fontsize',15)
title('2005-01-27 Eddy Kinetic Energy')
ax.FontSize = 15;