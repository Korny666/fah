# fah easy guide

## Goolge account
create an account at http://cloud.google.com/ 

## VM Setup
when finished got to https://console.cloud.google.com/
create a vm Compute Engine -> VM instances -> Create Instance

### New instance
you can leave the name as it is
#### Region
i choosed US because its cheapest
#### Machine configuration
##### Machine family
Leave General Purpose
##### Series
and choose some cpu of the second generation (I used N2D)
##### Machine Type 
I choosed something with 8 cores

#### Boot disk 
left it default with Debia GNU/Linux 9

#### Firewall 
enable both http and https traffic

**CREATE**

If some an error occurs change settings dependent on it.
e.g. Storage Quota exeeded in this region
change the region.... and so on


## script to setup vm for folding@home

Download the script
```sh
wget https://github.com/Korny666/fah/blob/master/updateAndInstalFAH.sh
```
grant executable rights
```sh
chmod +x updateAndInstalFAH.sh
```
execute
```sh
./updateAndInstalFAH.sh
```
check if everything is fine use
```sh
sudo /etc/init.d/FAHClient log
```
