clear;clc
cd('F:/我的雲端硬碟/海大1101_1102/衛星海洋學_1101_碩/Programming/WH/L2')

filename = 'AQUA_MODIS.20210922T045001.L2.SST.NRT.nc';
ncdisp(filename)
%%
% nc_dump(filename); % nc_dump 載入檔案
sst = nc_varget(filename,'/geophysical_data/sst');
qual_sst = nc_varget(filename,'/geophysical_data/qual_sst');
lat = nc_varget(filename,'/navigation_data/latitude');
lon = nc_varget(filename,'/navigation_data/longitude');

% qual_sst = nc_varget(filename,'qual_sst');
%%
% LATLIM1 = [-90 90];
% LONGLIM1 = [-180 180];
LATLIM1 = [18 26];
LONGLIM1 = [118 125];
% [lat_ind_r,lat_ind_c] = find(lat>=LATLIM1(1) & lat<=LATLIM1(end));
% [lon_ind_r,lon_ind_c] = find(lon>=LONGLIM1(1) & lon<=LONGLIM1(end));
% row = intersect(lat_ind_r,lon_ind_r);
% col = intersect(lat_ind_c,lon_ind_c);
% lon = lon(lat_ind,lon_ind);
% lat = lat(lat_ind,lon_ind);
% sst = sst(lat_ind,lon_ind);
% [XX,YY] = meshgrid(lon,lat);
%%
% find(XX(:,1)>=LONGLIM1(1) & XX(:,1)<=LONGLIM1(end));
% XX =  XX(YY(:,1)>=LATLIM1(1) & YY(:,1)<=LATLIM1(end),XX(1,:)>=LONGLIM1(1) & XX(1,:)<=LONGLIM1(end));
% YY =  YY(YY(:,1)>=LATLIM1(1) & YY(:,1)<=LATLIM1(end),XX(1,:)>=LONGLIM1(1) & XX(1,:)<=LONGLIM1(end));
% sst = sst(YY(:,1)>=LATLIM1(1) & YY(:,1)<=LATLIM1(end),XX(1,:)>=LONGLIM1(1) & XX(1,:)<=LONGLIM1(end));
%%
figure
m_proj('miller','lon',[LONGLIM1(1) LONGLIM1(end)],'lat',[LATLIM1(1) LATLIM1(end)]); % 繪製海面(白色)
%----------------------------------------------------------------------
m_pcolor(lon,lat,sst);shading flat
% pcolor(lon,lat,sst);shading flat;
colormap('jet')
caxis([28 32])
h = colorbar;
m_gshhs_h('patch',[0.7 0.7 0.7],'edgecolor','k');    % 繪製陸地
m_grid('linewi',1,'linestyle',':','tickdir','in','gridcolor','k',...
        'xtick',LONGLIM1,'ytick',LATLIM1,'fontsize',20,'fontweight','bold',...
        'XaxisLocation','bottom','YaxisLocation','left','box','fancy');
%% quality level
% figure
% m_proj('miller','lon',[LONGLIM1(1) LONGLIM1(end)],'lat',[LATLIM1(1) LATLIM1(end)]); % 繪製海面(白色)
% %----------------------------------------------------------------------
% % m_pcolor(XX,YY,sst);shading flat
% m_pcolor(lon,lat,qual_sst);shading flat
% % pcolor(XX,YY,sst);shading flat;
% colormap('jet')
% caxis([0 5])
% h = colorbar;
% m_gshhs_h('patch',[0.7 0.7 0.7],'edgecolor','k');    % 繪製陸地
% m_grid('linewi',1,'linestyle',':','tickdir','in','gridcolor','k',...
%         'xtick',LONGLIM1,'ytick',LATLIM1,'fontsize',20,'fontweight','bold',...
%         'XaxisLocation','bottom','YaxisLocation','left','box','fancy');