clear;clc;close all
%%
file_sst_all = dir('./AVHRR/*AVHRR_Pathfinder*.nc');
sea_surface_temperature = [];
time_series = [];
%%
for i = 1:length(file_sst_all)
    file_sst = file_sst_all(i).name;
    file_sst = ['./AVHRR/' file_sst];
    ncdisp(file_sst)
    quality_level = nc_varget(file_sst,'quality_level');
    pathfinder_quality_level = nc_varget(file_sst,'pathfinder_quality_level');
    l2p_flags = nc_varget(file_sst,'l2p_flags');
    time = nc_varget(file_sst,'time');
    time_series{i} = datetime('1981/01/01 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS')+seconds(time);
    lat = nc_varget(file_sst,'lat');
    lon = nc_varget(file_sst,'lon');
    
    sea_surface_temperature_NC = nc_varget(file_sst,'sea_surface_temperature')-273.15;
    sea_surface_temperature_NC(pathfinder_quality_level<=3) = NaN;
    sea_surface_temperature_NC(quality_level<4) = NaN;
    sea_surface_temperature_NC(l2p_flags==64) = NaN;
    sea_surface_temperature(i,:,:)=sea_surface_temperature_NC;
    fprintf([num2str(i) '/' num2str(length(file_sst_all)) '\n'])
end
%% 
sea_surface_temperature = mean(sea_surface_temperature,1,'omitnan');
%% 
LAT_lim = [-25:-5:-50];
LON_lim = [10:5:35];
%%
figure
m_proj('miller','lon',[LON_lim(1) LON_lim(end)],'lat',[LAT_lim(end) LAT_lim(1)]);
m_pcolor(lon,lat,permute(sea_surface_temperature,[2,3,1]))
c1 = colorbar;
caxis([0 30])
%---imread colormap---%
[X1,cmap1] = imread('sst.png');
RGB1 = ind2rgb(X1,cmap1);
colormap(reshape(RGB1(10,:,:),size(RGB1,2),3));
%---imread colormap---%
c1.Label.String = 'temperature (^oC)';
m_gshhs_i('patch',[.7 .7 .7],'linewidth',0.5);
m_grid('tickdir','in','xtick',LON_lim,'ytick',LAT_lim,'LineWidth',3)
title('AVHRR SST')
ax = gca;
ax.LineWidth = 2;
ax.FontSize = 20;
xlabel('8-day average SST on March 15-22, 2001','FontSize',10)
%% Output the figure
print('AVHRR-SST','-dtiffn','-r300')
print('AVHRR-SST','-dpdf','-fillpage')