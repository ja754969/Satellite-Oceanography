clear;clc;close all
%%
%% L2
filename=('AQUA_MODIS.20210922_20210924.L3m.R3QL.SST.sst.4km.NRT.nc');
% ncdump(filename)
%%
sst=ncread(filename,'sst');
lon=ncread(filename,'lon');
lat=ncread(filename,'lat');
%%
figure
ax1=axes;
ax1.Position = [0.1 0.6 0.45 0.3];
% figure
ax2=axes;
ax2.Position = [0.6 0.6 0.4 0.3];
% m_proj('set')
m_proj('miller','lon',[120 123],'lat',[24 25]);
% m_proj get
% help m_contour
m_pcolor(lon,lat,sst');hold on;
[CS,CH] = m_contour(lon,lat,sst',[30 30],'k');hold off;
clabel(CS,CH,'LabelSpacing',1000)
set(CH,'linewidth',2);
% m_usercoast('your','patch',color)
% m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_gshhs_f('patch',[0.5 0.5 0.5],'linewidth',0.5);
m_grid('Tickdir','out','xtick',[100:0.5:160],'ytick',[10:0.5:40],'LineWidth',3,...
    'ticklength',0.01,'tickstyle','dd','fontname','time_new_roman'); % make grid point
% m_grid('get') % check the parameters we can modified
%%
colormap('jet')
h = colorbar;