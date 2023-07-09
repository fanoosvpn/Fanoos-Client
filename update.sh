systemctl stop Fanoos
cp install/files/Fanoos.service /etc/systemd/system/
cp Fanoos-Client.new Fanoos-Client
systemctl disable Fanoos
systemctl enable Fanoos
systemctl start Fanoos