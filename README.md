# folding@home easy guide with google cloud

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
and choose E2
##### Machine Type 
Custom
##### Cores
16vCPU (highest)
##### RAM
8GB (lowest - we need computing power)

#### Boot disk 
left it default with Debia GNU/Linux 9

#### Firewall 
enable both http and https traffic

**CREATE**

If some an error occurs change settings dependent on it.
e.g. Storage Quota exeeded in this region
change the region.... and so on


## commands to setup vm for folding@home

Open the console of the vm when creation was successful. Click on the **SSH** Button

You can copy paste (Ctrl+C and Ctrl+V) the [One-Liner](https://github.com/Korny666/fah/blob/master/README.md#one-liner) command or do it [Step by Step](https://github.com/Korny666/fah/blob/master/README.md#step-by-step)
### One-Liner
```sh
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install bzip2 htop less && wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/latest.deb && sudo dpkg -i --force-depends latest.deb
```
this will lead you to the setup
### Setup Folding@Home
#### Folding@home User Name:
Insert a nicname you want
#### Folding@home Team Number
My team is 239199 (GameStarVsCorona)
#### Folding@home Passkey:
Optional press enter to continue
#### How much of your system resources should be used initially?
Choose Full (arrow keys) and press enter
#### Should FAHClient be automatically started?
**YES** and Start at the beginning

### Checking on the client
check if everything is fine use
```sh
sudo /etc/init.d/FAHClient log
```
for reloading 
```sh
sudo /etc/init.d/FAHClient reload
```
for command list 
```sh
sudo /etc/init.d/FAHClient --help
```

## Step by step
```sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install bzip2 htop less

wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/latest.deb

sudo dpkg -i --force-depends latest.deb
```
## further documentaiton
https://foldingathome.org/support/faq/installation-guides/linux/command-line-options/
