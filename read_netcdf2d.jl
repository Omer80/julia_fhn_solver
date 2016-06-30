function  read_netcdf2d(file, varname="")
#== --------------------------------------------
 Read 2-dim (lon-lat + eventually time) netcdf file

 [var] = read_netcdf2d(file, VARname)
 [var, lon] = read_netcdf2d(file, VARname)
 [var, lon, lat] = read_netcdf2d(file, VARname)
 [var, lon, lat, time] = read_netcdf2d(file, VARname)
 -------------------------------------------- ==#

lat=ncread(file,"lat");
lon=ncread(file,"lon");

if(varname=="")
   nc = NetCDF.open( file , mode=NC_NOWRITE, readdimvar=false )
   for key in  keys(nc.vars)
      if(key!="lon" && key!="lat" && key!="time")
            varname=key
      end
   end
   NetCDF.close(nc)
end

var=ncread(file,varname);

return var,lon,lat
end
