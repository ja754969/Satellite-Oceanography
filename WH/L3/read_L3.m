%% read Aqua/MODIS L3 dataset
%
%

filename='AQUA_MODIS.20210922.L3m.DAY.SST.sst.4km.NRT.nc';
sst=ncread(filename,'sst');
lon=ncread(filename,'lon');
lat=ncread(filename,'lat');
qual_sst=ncread(filename,'qual_sst');
% palette=double(ncread(filename,'palette'))/255;
%--- Global Map-----------------------
figure
pcolor(lon,lat,sst');shading flat
%--- Taiwan----------------------
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,sst')
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
colorbar
caxis([28 32])
colormap(jet)
%--- Quality Level---
% Quality Level Definitions
% Quality   Level Meaning
% 0         Best: satellite zenith angles < 55 degrees
% 1         Good/acceptable in glint or high viewing angle
% 2         Suspect
% 3         Bad cloud/ice/dust or atmospheric correction failed
% 4         Not processed or land
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,qual_sst')
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
colorbar
caxis([0,5])
colormap(jet(5))

%% 3 day
filename='AQUA_MODIS.20210922_20210924.L3m.R3QL.SST.sst.4km.NRT.nc';
sst=ncread(filename,'sst');
lon=ncread(filename,'lon');
lat=ncread(filename,'lat');
qual_sst=ncread(filename,'qual_sst');
% palette=double(ncread(filename,'palette'))/255;
%--- Global Map-----------------------
figure
pcolor(lon,lat,sst');shading flat
%--- Taiwan----------------------
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,sst')
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
colorbar
caxis([28 32])
colormap(jet)
%--- Quality Level---
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,qual_sst')
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
colorbar
caxis([0,5])
colormap(jet(5))
