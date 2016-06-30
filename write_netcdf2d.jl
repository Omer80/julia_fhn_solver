function write_netcdf2d(fname,var,lon,lat,varname,filenc) 

(nsx,nsy)=size(lon)
(ns,ns,nt)=size(var)

mode=NC_NETCDF4

ncin= NetCDF.open(filenc)
lonatt= ncin.vars["lon"].atts
latatt= ncin.vars["lat"].atts
timeatt= ncin.vars["time"].atts
varatt= ncin.vars[varname].atts
tim=NetCDF.readvar(ncin,"time");
NetCDF.close(ncin)

#ncgetatt(filenc, "global", gatts)

varattr=Dict()
for k in collect(keys(varatt))
   if(k!="_FillValue") 
       varattr[k]=varatt[k]
   end
end

isfile(fname) ? rm(fname) : nothing
nccreate( fname, varname , "x" , nsx, "y", nsy, "time", tim[1:nt] ,timeatt, atts=varattr,mode=mode,t=NC_FLOAT);
nccreate( fname, "lon" , "x" , nsx, "y", nsy,  atts=lonatt,mode=mode,t=NC_FLOAT);
nccreate( fname, "lat" , "x" , nsx, "y", nsy,  atts=latatt,mode=mode,t=NC_FLOAT);

ncwrite(var,fname,varname)
ncwrite(lon,fname,"lon")
ncwrite(lat,fname,"lat")

ncclose(fname)
end


