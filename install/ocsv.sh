yum install -y ocserv
tar -xzf ocserv.tar.gz -C /etc/ocserv/
systemctl enable ocserv
systemctl start ocserv
