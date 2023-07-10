date >>/etc/sysconfig/iptables.backup
iptables-save >>/etc/sysconfig/iptables.backup
systemctl disable firewalld
systemctl stop firewalld
systemctl enable iptables
systemctl restart iptables
iptables -A FORWARD -t filter -i FanoosClient -j ACCEPT
iptables -A FORWARD -t filter -o FanoosClient -j ACCEPT
iptables -A POSTROUTING -t nat -o FanoosClient -j MASQUERADE
iptables-save >/etc/sysconfig/iptables
systemctl restart iptables
