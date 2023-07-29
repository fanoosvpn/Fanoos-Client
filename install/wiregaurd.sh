yum install epel-release https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm -y
yum install yum-plugin-elrepo -y
yum install kmod-wireguard wireguard-tools -y

cp files/wgui.service /etc/systemd/system/wgui.service
cp files/wgui.path /etc/systemd/system/wgui.path
cp files/wgui.wgui /etc/systemd/system/wgui.wgui

systemctl enable wgui.{path,service,wgui}
systemctl start wg-quick@wg0.service
systemctl start wgui.{path,service,wgui}
