clear;clc
cd F:/我的雲端硬碟/海大1101_1102/衛星海洋學_1101_碩/Programming
currentFolder = pwd;
image_folder = 'hw1';
%% L2
cd([currentFolder '/WH/L3'])
filename_L3_official = 'AQUA_MODIS.20210922_20210924.L3m.R3QL.SST.sst.4km.NRT.nc';
ncdisp(filename_L3_official)
%%
% nc_dump(filename_L3_official); % nc_dump 載入檔案
sst = nc_varget(filename_L3_official,'sst');
qual_sst = nc_varget(filename_L3_official,'qual_sst');
lat = nc_varget(filename_L3_official,'lat');
lon = nc_varget(filename_L3_official,'lon');
%%
% LATLIM1 = [-90 90];
% LONGLIM1 = [-180 180];
LATLIM1 = [18:26];
LONGLIM1 = [118:125];
% LATLIM1 = [6:43];
% LONGLIM1 = [97:145];
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
        'xtick',LONGLIM1,'ytick',LATLIM1,'fontsize',10,'fontweight','bold',...
        'XaxisLocation','bottom','YaxisLocation','left','box','fancy');
title(filename_L3_official(12:12+16),'Interpreter','none')
cd(currentFolder)
if isempty(ls(image_folder)) == 1
    mkdir(image_folder)
end
cd(['./' image_folder])
print(['L3_' filename_L3_official(12:12+16)],'-dpng')
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
%% L2 
cd([currentFolder '/WH/L2'])
filename_pattern = dir('AQUA_MODIS.202109*.L2.SST.NRT.nc');
figure
% all_sst = [];
lon_range = [];
lat_range = [];
grid_resolution = 0.04;
for i = 1:length(filename_pattern)
    cd([currentFolder '/WH/L2'])
    filename_L2_download = filename_pattern(i).name;
    cd(currentFolder)
    [XX_lon,YY_lat,gridded_sst] = L2_regrid([currentFolder '/WH/L2'],filename_L2_download,grid_resolution);
    lon_range(:,:,i) = [XX_lon(1,1) XX_lon(1,end)];
    lat_range(:,:,i) = [YY_lat(end,1) YY_lat(1,1)];
    all_sst{i} = gridded_sst;
    % ncdisp(filename_L2_download)
    % % nc_dump(filename_L3_official); % nc_dump 載入檔案
    % sst = nc_varget(filename_L2_download,'/geophysical_data/sst');
    % qual_sst = nc_varget(filename_L2_download,'/geophysical_data/qual_sst');
    % lat = nc_varget(filename_L2_download,'/navigation_data/latitude');
    % lon = nc_varget(filename_L2_download,'/navigation_data/longitude');
    %%
    % LATLIM1 = [-90 90];
    % LONGLIM1 = [-180 180];
    LATLIM1 = [18:26];
    LONGLIM1 = [118:125];
    %%
    figure
    % subplot(3,2,i)
    m_proj('miller','lon',[LONGLIM1(1) LONGLIM1(end)],'lat',[LATLIM1(1) LATLIM1(end)]); % 繪製海面(白色)
    %----------------------------------------------------------------------
    m_pcolor(XX_lon,YY_lat,gridded_sst);shading flat
    % pcolor(lon,lat,sst);shading flat;
    colormap('jet')
    caxis([28 32])
    h = colorbar;
    m_gshhs_h('patch',[0.7 0.7 0.7],'edgecolor','k');    % 繪製陸地
    m_grid('linewi',1,'linestyle',':','tickdir','in','gridcolor','k',...
            'xtick',LONGLIM1,'ytick',LATLIM1,'fontsize',10,'fontweight','bold',...
            'XaxisLocation','bottom','YaxisLocation','left','box','fancy');
    cd(currentFolder)
    if isempty(ls(image_folder)) == 1
        mkdir(image_folder)
    end
    cd(['./' image_folder])

    title(filename_L2_download(12:12+10))
    print(['L2_' filename_L2_download(12:12+10)],'-dpng')
end
%%
LAT = [max(lat_range(:)):-grid_resolution:min(lat_range(:))]';
LONG = min(lon_range(:)):grid_resolution:max(lon_range(:));
[LONG,LAT] = meshgrid(LONG,LAT);
sst_3d = NaN(size(LONG,1),size(LAT,2),length(filename_pattern));
for i = 1:length(filename_pattern)
   sst_3d(LAT(:,1)>=lat_range(1,1,i) & LAT(:,1) <= lat_range(1,2,i),...
       LONG(1,:)>=lon_range(1,1,i) & LONG(1,:) <= lon_range(1,2,i),i) = all_sst{i};
end

sst_3d_mean = mean(sst_3d,3,'omitnan');
figure
m_proj('miller','lon',[LONGLIM1(1) LONGLIM1(end)],'lat',[LATLIM1(1) LATLIM1(end)]); % 繪製海面(白色)
%----------------------------------------------------------------------
m_pcolor(LONG,LAT,sst_3d_mean);shading flat
%     pcolor(LONG,LAT,sst_3d_mean);shading flat
colormap('jet')
caxis([28 32])
h = colorbar;
m_gshhs_h('patch',[0.7 0.7 0.7],'edgecolor','k');    % 繪製陸地
m_grid('linewi',1,'linestyle',':','tickdir','in','gridcolor','k',...
        'xtick',LONGLIM1,'ytick',LATLIM1,'fontsize',10,'fontweight','bold',...
        'XaxisLocation','bottom','YaxisLocation','left','box','fancy');
cd(currentFolder)
if isempty(ls(image_folder)) == 1
    mkdir(image_folder)
end
cd(['./' image_folder])

title('L2_3-day_mean (2021/9/22~2021/9/24)','Interpreter','none')
print('L2_3-day_mean','-dpng')
