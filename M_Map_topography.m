clear;
clc
close all
%% 畫圖範圍
LATLIM1 = [18:0.5:26.5];
LONGLIM1 = [117.5:0.5:124];
%% 
Taiwan_topography = imread('ETOPO1_Taiwan_exportImage_v2.tif');
% % (30,110) (15,130)
% topo_lon = 110:1/60:130;
% topo_lat = 30:-1/60:15;
% (30,110) (15,130)
topo_lon = 106:1/60:150;
topo_lat = 48:-1/60:8;
[topo_lon,topo_lat] = meshgrid(topo_lon,topo_lat);
Taiwan_topography = double(Taiwan_topography);
Taiwan_topography(Taiwan_topography >= 0) = 0; %去除海平面以上的值
%% 繪製地形的參數設定
lon_relief = linspace(LONGLIM1(1),LONGLIM1(end),length(LONGLIM1(1):1/60:LONGLIM1(end)));
lat_relief = linspace(LATLIM1(end),LATLIM1(1),length(LATLIM1(end):-1/60:LATLIM1(1)));
[xx_relief,yy_relief] = meshgrid(lon_relief,lat_relief);
%%
latNS = find(topo_lat(:,1)<=LATLIM1(end) & topo_lat(:,1)>=LATLIM1(1));
lonWE = find(topo_lon(1,:)>=LONGLIM1(1) & topo_lon(1,:)<=LONGLIM1(end));
Taiwan_topography = Taiwan_topography(latNS,lonWE);
%% 
figure

m_proj('miller','lon',[LONGLIM1(1) LONGLIM1(end)],'lat',[LATLIM1(1) LATLIM1(end)]); % 繪製海面(白色)
%----------------------------------------------------------------------
[CS,CH] = m_contourf(xx_relief,yy_relief,log10(abs(Taiwan_topography)));shading flat;
set(CH,'levelStep',0.001);
set(CH,'linecolor','none');
colormap(m_colmap('jet',1000)); 

h = colorbar;
% caxis([-1000 0])
m_gshhs_i('patch',[.8 .8 .8]);
m_grid('box','fancy','tickdir','in')
