# VIT-WiFi-AutoLogin
This project aims to provide a simple script that enables the user login into VIT's hostel WiFi without going through the hassle of entering their details everytime.

<br><br>
# Installation
## For Linux/Ubuntu/Debian Users
* Download this [file](https://github.com/OG-Aadarsh-Verma/VIT-WiFi-AutoLogin/blob/main/Ubuntu%20(or%20Debian)/wifi-autologin.sh)
* Open wifi-autologin.sh in a text editor. <br><br>
Replace ```{YOUR_USERNAME}``` with your portal login Id and ```{YOUR_PASSWORD}``` with your portal password. <br><br>
Save the file. <br><br>
* To make sure that this script runs every time you boot your system, you need to follow these steps: 
  + cd into directory of script
  + make script executable:
  + ```chmod +x wifi-autologin.sh```
> Note: This step is optional but you will have to execute the script everytime inorder to use it.


### Linux:
#### Using crontab

```sh
crontab -e
@reboot  /home/user/startup.sh
```
Now your your startup.sh script will run at every start.

#### Using systemctl:

- cd to `/etc/systemd/system`

- Create a file named `wifiLogin.service`
- Add the following lines to `wifiLogin.service`:
```sh
[Unit]
Description=WifiAutoLogin

[Service]
Type=simple
ExecStart=/path/to/wifi-autologin.sh

[Install]
WantedBy=multi-user.target
```
Replace `/path/to/wifi-autologin.sh` with your location of the login script and save the changes

- Reload the systemctl daemon using 
```sh
sudo systemctl daemon-reload
```

- Enable the service:
```sh
sudo systemctl enable wifiLogin.service
sudo systemctl start wifiLogin.service
```
- Check the status of the service:
```sh
sudo systemctl status wifiLogin.service
```
Now your system will login to wifi on every system login
