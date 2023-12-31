yum install epel-release https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm -y
yum install yum-plugin-elrepo -y
yum install kmod-wireguard wireguard-tools -y

cat tools/wg-ui.tar.gz.part-* | tar -C / -xzf -

cp install/files/wgui.service /etc/systemd/system/wgui.service
cp install/files/wgui.path /etc/systemd/system/wgui.path
cp install/files/wgui.wui.service /etc/systemd/system/wgui.wui.service

systemctl enable wgui.path
systemctl enable wgui.service
systemctl enable wgui.wui.service
systemctl start wg-quick@wg0.service
systemctl start wgui.path
systemctl start wgui.service
systemctl start wgui.wui.service

