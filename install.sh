./install/rpm.sh
./install/copyfiles.sh
./install/zsh.sh
./install/firewall.sh
echo 201 Fanoos>> /etc/iproute2/rt_tables
systemctl enable Fanoos-Client
systemctl start Fanoos-Client
