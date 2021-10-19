%% L2
filename=('AQUA_MODIS.20210922T045001.L2.SST.NRT.nc');
ncdump(filename)
%%
sst=ncread(filename,'/geophysical_data/sst');
qual_sst=ncread(filename,'/geophysical_data/qual_sst');
flags_sst=ncread(filename,'/geophysical_data/flags_sst');
bias_sst=ncread(filename,'/geophysical_data/bias_sst');
stdv_sst=ncread(filename,'/geophysical_data/stdv_sst');
sstref=ncread(filename,'/geophysical_data/sstref');
l2_flags=ncread(filename,'/geophysical_data/l2_flags');

lon=ncread(filename,'/navigation_data/longitude');
lat=ncread(filename,'/navigation_data/latitude');
%--- Taiwan----------------------
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,sst)
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
colorbar
caxis([28 32])
colormap(jet)
%--- Quality Level---
%https://oceancolor.gsfc.nasa.gov/atbd/sst/
%[0 1 2 3 4]
%'BEST GOOD QUESTIONABLE BAD NOTPROCESSED'
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,qual_sst)
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
h=colorbar;
caxis([0,5]);colormap(jet(5));

h.TickLabels = [];

ax = axes('Position', h.Position,...
    'Color', 'none',...
    'XTick', [],...
    'YLim', h.Limits,...
    'YTick', [0.5:1:4.5],...
    'YTicklabel',{'Best';'Good';'Questuionable';'Bad';'Not processed'},...
    'FontSize', h.FontSize,...
    'ticklength',[0.0001 0.5]);
ytickangle(ax, 90);
set(h,'ytick',[0:1:5]);

%--- SST Quality Flags---
% https://oceancolor.gsfc.nasa.gov/atbd/sst/flag/
% Bit	Name                Description
% 00	ISMASKED            Pixel was already masked.
% 01	BTBAD               Brightness temperatures are bad outside radiance to brightness table conversion or saturated
% 02	BTRANGE             Brightness temperatures are out-of-range for top of the atmosphere realistic ocean surface values, -4 to 37 °C
% 03	BTDIFF              Brightness temperatures spectral differences between channels are outside of expected valid ranges, 0 – 1.6 °C
% 04	SSTRANGE            SST outside valid range -1.8 to 45 °C
% 05	SSTREFDIFF          Retrieved SST is too different from Reynolds reference field. Threshold is > -3 °C non dust regions and a more stringent > -1.25 °C in known dust region defined as 10S to 30N latitude and 105W and 105E longitude.
% 06	SST_triple_DIFF     Longwave NSST is different from SST_triple
% 07	SST_triple_VDIFF	Longwave NSST is very different from shortwave SST_triple
% 08	BTNONUNIF           Brightness temperatures are spatially non-uniform > 0.7 °C
% 09	BTVNONUNIF          Brightness temperatures are very spatially non-uniform ° 1.2 °C
% 10	spare               spare
% 11	REDNONUNIF          Red-band reflectance spatial non-uniformity or saturation > 0.01. Test not applied in sun glint region.
% 12	HISENZ              Sensor zenith angle high > 55 degrees
% 13	VHISENZ             Sensor zenith angle very high > 65 degrees
% 14	SSTREFVDIFF         SST is too different from reference > 5 °C
% 15	SST_CLOUD           Pixel failed the cloud Alternating decision tree
figure
m_proj('miller','lon',[118 125],'lat',[18 26]);
m_pcolor(lon,lat,flags_sst)
m_gshhs_f('patch',[.8 .8 .8],'linewidth',0.5);
m_grid('tickdir','in','xtick',[100:160],'ytick',[10:40])
h=colorbar;

flag_C=(flags_sst<0);
flag_sst2=flags_sst;
flag_sst2(flags_sst<0)=flags_sst(flags_sst<0)+32768;

% unique(flags_sst(flags_sst>0));
% dec2bin(ans);


for ind=14:-1:1
    FG(:,:,ind)=flag_sst2>=2^ind;
    flag_sst2(flag_sst2>=2^ind)=flag_sst2(flag_sst2>=2^ind)-2^ind;
end

