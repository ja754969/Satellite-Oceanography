function [XX_lon,YY_lat,gridded_chlor_a] = L2_regrid_chlor_a(filename_path,filename,sp_res,target_LAT,target_LON)
    
    coding_file = pwd;
    grid_range = sp_res; % set a width of grid 
    cd(coding_file)
    
    ncdisp([filename_path '/' filename])
%% Read variables
    % nc_dump(filename_L3_official); % nc_dump 載入檔案
    chlor_a = nc_varget([filename_path '/' filename],'/geophysical_data/chlor_a');
    lat = nc_varget([filename_path '/' filename],'/navigation_data/latitude');
    lon = nc_varget([filename_path '/' filename],'/navigation_data/longitude');
    lon(lon<0) = lon(lon<0) + 360;
%% 抓出每個資料經緯度的最大最小值
    % Find the maximum and minimum of the longtitude.
%     max_xlon = max(lon(:));min_xlon = min(lon(:));
    max_xlon = max(target_LON);min_xlon = min(target_LON);
    % Find the maximum and minimum of the latitude.
%     max_ylat = max(lat(:));min_ylat = min(lat(:));
    max_ylat = max(target_LAT);min_ylat = min(target_LAT);
%% 經緯度格點化
    % Setting a range of lontitude.
    xlon_range = fix(min_xlon):grid_range:fix(max_xlon +1);
    % Setting a range of latitude.
    ylat_range = fix(max_ylat +1):-grid_range:fix(min_ylat);
    % Preprocessing of grid point data.
    new_xlon = xlon_range'';
    % Preprocessing of grid point data.
    new_ylat = ylat_range;
    % Create 2-D grid coordinates based on the coordinates contained in new_xlon and new_ylat.
    [XX_lon,YY_lat] = meshgrid(new_xlon,new_ylat);

%% 將data格點化 ( 把資料從一維轉成二維，經度資料行和行之間會等間隔、緯度資料列和列之間會等間隔 )
    uv_grid_range = grid_range/1; % 格點化資料要選取的資料範圍
    gridded_chlor_a = zeros(length(new_ylat),length(new_xlon));
    for j = 1:length(new_xlon)
        for k = 1:length(new_ylat)
            select = find(lon(:) >= new_xlon(j)-uv_grid_range & ...
                lon(:) < new_xlon(j)+uv_grid_range & ...
                lat(:) >= new_ylat(k)-uv_grid_range & ...
                lat(:)< new_ylat(k)+uv_grid_range);
            chlor_a_in_grid = chlor_a(select);
            gridded_chlor_a(k,j) = mean(chlor_a_in_grid(:),'omitnan');
        end
    end
end