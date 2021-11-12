clear;clc;close all
%%
current_folder = pwd;
cd([current_folder '/nc_file_DataSelection_20211109_071511_12958017'])
filename_pattern = dir('argo-profiles-290*.nc');
filename = filename_pattern(1).name;
ncdisp(filename)
% http://www.argodatamgt.org/Documentation
selected_date = [datetime('2017/08/14 11:47:41','InputFormat','yyyy/MM/dd HH:mm:SS');...
    datetime('2017/08/17 12:20:15','InputFormat','yyyy/MM/dd HH:mm:SS');...
    datetime('2017/08/17 11:59:11','InputFormat','yyyy/MM/dd HH:mm:SS');...
    datetime('2017/08/13 11:53:40','InputFormat','yyyy/MM/dd HH:mm:SS')];
%%
% time = nc_varget(filename,'REFERENCE_DATE_TIME');
time = days(nc_varget(filename,'JULD'))+datetime('1950/01/01 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
% time_begin = datetime('1950/01/01 00:00:00','InputFormat','yyyy/MM/dd HH:mm:SS');
% time = time_begin + days(time);
latitude = nc_varget(filename,'LATITUDE');
longitude = nc_varget(filename,'LONGITUDE');
sea_water_temperature = nc_varget(filename,'TEMP');
sea_water_pressure = nc_varget(filename,'PRES');