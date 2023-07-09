if ip netns list | grep -q "Fanoos"; then
    echo "Changing Network NameSpace to Fanoos..."
else
    echo "Creating and Changing Network NameSpace to Fanoos..."
    ip rule add from 192.168.255.252/30 lookup Fanoos
    ip netns add Fanoos
    ip link add veth0 type veth peer name veth1
    ip link set veth1 netns Fanoos
    ip addr add 192.168.255.253/30 dev veth0
    ip netns exec Fanoos ip addr add 192.168.255.254/30 dev veth1
    ip link set veth0 up
    ip netns exec Fanoos ip link set veth1 up
    ip netns exec Fanoos ip route add default via 192.168.255.253
fi
ip netns exec Fanoos zsh
