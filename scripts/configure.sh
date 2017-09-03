#!/bin/bash

# Create initial private tinc keys
tinc init $TINC_NAME

# Main configuration variables
if [[ $TINC_ADDRESS_FAMILY ]]; then tinc set AddressFamily $TINC_ADDRESS_FAMILY; fi
if [[ $TINC_AUTO_CONNECT ]]; then tinc set AutoConnect $TINC_AUTO_CONNECT; fi
if [[ $TINC_BIND_TO_ADDRESS ]]; then tinc set BindToAddress $TINC_BIND_TO_ADDRESS; fi
if [[ $TINC_BIND_TO_INTERFACE ]]; then tinc set BindToInterface $TINC_BIND_TO_INTERFACE; fi
if [[ $TINC_BROADCAST ]]; then tinc set Broadcast $TINC_BROADCAST; fi
if [[ $TINC_BROADCAST_SUBNET ]]; then tinc set BroadcastSubnet $TINC_BROADCAST_SUBNET; fi
if [[ $TINC_CONNECT_TO ]]; then tinc set ConnectTo $TINC_CONNECT_TO; fi
if [[ $TINC_DECREMENT_TTL ]]; then tinc set DecrementTTL $TINC_DECREMENT_TTL; fi
if [[ $TINC_DEVICE ]]; then tinc set Device $TINC_DEVICE; fi
if [[ $TINC_DEVICE_STANDBY ]]; then tinc set DeviceStandby $TINC_DEVICE_STANDBY; fi
if [[ $TINC_DEVICE_TYPE ]]; then tinc set DeviceType $TINC_DEVICE_TYPE; fi
if [[ $TINC_DIRECT_ONLY ]]; then tinc set DirectOnly $TINC_DIRECT_ONLY; fi
if [[ $TINC_ED25519_PRIVATE_KEY_FILE ]]; then tinc set Ed25519PrivateKeyFile $TINC_ED25519_PRIVATE_KEY_FILE; fi
if [[ $TINC_EXPERIMENTAL_PROCOTOL ]]; then tinc set ExperimentalProcotol $TINC_EXPERIMENTAL_PROCOTOL; fi
if [[ $TINC_FORWARDING ]]; then tinc set Forwarding $TINC_FORWARDING; fi
if [[ $TINC_HOSTNAMES ]]; then tinc set Hostnames $TINC_HOSTNAMES; fi
if [[ $TINC_INTERFACE ]]; then tinc set Interface $TINC_INTERFACE; fi
if [[ $TINC_LISTEN_ADDRESS ]]; then tinc set ListenAddress $TINC_LISTEN_ADDRESS; fi
if [[ $TINC_LOCAL_DISCOVERY ]]; then tinc set LocalDiscovery $TINC_LOCAL_DISCOVERY; fi
if [[ $TINC_LOCAL_DISCOVERY_ADDRESS ]]; then tinc set LocalDiscoveryAddress $TINC_LOCAL_DISCOVERY_ADDRESS; fi
if [[ $TINC_MODE ]]; then tinc set Mode $TINC_MODE; fi
if [[ $TINC_KEY_EXPIRE ]]; then tinc set KeyExpire $TINC_KEY_EXPIRE; fi
if [[ $TINC_MAC_EXPIRE ]]; then tinc set MACExpire $TINC_MAC_EXPIRE; fi
if [[ $TINC_MAX_CONNECTION_BURST ]]; then tinc set MaxConnectionBurst $TINC_MAX_CONNECTION_BURST; fi
if [[ $TINC_NAME ]]; then tinc set Name $TINC_NAME; fi
if [[ $TINC_PING_INTERVAL ]]; then tinc set PingInterval $TINC_PING_INTERVAL; fi
if [[ $TINC_PING_TIMEOUT ]]; then tinc set PingTimeout $TINC_PING_TIMEOUT; fi
if [[ $TINC_PRIORITY_INHERITANCE ]]; then tinc set PriorityInheritance $TINC_PRIORITY_INHERITANCE; fi
if [[ $TINC_PRIVATE_KEY ]]; then tinc set PrivateKey $TINC_PRIVATE_KEY; fi
if [[ $TINC_PRIVATE_KEY_FILE ]]; then tinc set PrivateKeyFile $TINC_PRIVATE_KEY_FILE; fi
if [[ $TINC_PROCESS_PRIORITY ]]; then tinc set ProcessPriority $TINC_PROCESS_PRIORITY; fi
if [[ $TINC_PROXY ]]; then tinc set Proxy $TINC_PROXY; fi
if [[ $TINC_REPLAY_WINDOW ]]; then tinc set ReplayWindow $TINC_REPLAY_WINDOW; fi
if [[ $TINC_STRICT_SUBNETS ]]; then tinc set StrictSubnets $TINC_STRICT_SUBNETS; fi
if [[ $TINC_TUNNEL_SERVER ]]; then tinc set TunnelServer $TINC_TUNNEL_SERVER; fi
if [[ $TINC_UDP_DISCOVERY ]]; then tinc set UDPDiscovery $TINC_UDP_DISCOVERY; fi
if [[ $TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL ]]; then tinc set UDPDiscoveryKeepaliveInterval $TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL; fi
if [[ $TINC_UDP_DISCOVERY_INTERVAL ]]; then tinc set UDPDiscoveryInterval $TINC_UDP_DISCOVERY_INTERVAL; fi
if [[ $TINC_UDP_DISCOVERY_TIMEOUT ]]; then tinc set UDPDiscoveryTimeout $TINC_UDP_DISCOVERY_TIMEOUT; fi
if [[ $TINC_UDP_INFO_INTERVAL ]]; then tinc set UDPInfoInterval $TINC_UDP_INFO_INTERVAL; fi
if [[ $TINC_UDP_RCV_BUF ]]; then tinc set UDPRcvBuf $TINC_UDP_RCV_BUF; fi
if [[ $TINC_UDP_SND_BUF ]]; then tinc set UDPSndBuf $TINC_UDP_SND_BUF; fi
if [[ $TINC_UPNP ]]; then tinc set UPnP $TINC_UPNP; fi
if [[ $TINC_UPNP_DISCOVER_WAIT ]]; then tinc set UPnPDiscoverWait $TINC_UPNP_DISCOVER_WAIT; fi
if [[ $TINC_UPNP_REFRESH_PERIOD ]]; then tinc set UPnPRefreshPeriod $TINC_UPNP_REFRESH_PERIOD; fi

# Configure host
if [[ $TINC_ADDRESS ]]; then tinc set Address $TINC_ADDRESS; fi
if [[ $TINC_CIPHER ]]; then tinc set Cipher $TINC_CIPHER; fi
if [[ $TINC_CLAMP_MMS ]]; then tinc set ClampMMS $TINC_CLAMP_MMS; fi
if [[ $TINC_COMPRESSION ]]; then tinc set Compression $TINC_COMPRESSION; fi
if [[ $TINC_DIGEST ]]; then tinc set Digest $TINC_DIGEST; fi
if [[ $TINC_INDIRECT_DATA ]]; then tinc set IndirectData $TINC_INDIRECT_DATA; fi
if [[ $TINC_MAC_LENGTH ]]; then tinc set MACLength $TINC_MAC_LENGTH; fi
if [[ $TINC_PMTU ]]; then tinc set PMTU $TINC_PMTU; fi
if [[ $TINC_PMTU_DISCOVERY ]]; then tinc set PMTUDiscovery $TINC_PMTU_DISCOVERY; fi
if [[ $TINC_MTU_INFO_INTERVAL ]]; then tinc set MTUInfoInterval $TINC_MTU_INFO_INTERVAL; fi
if [[ $TINC_PORT ]]; then tinc set Port $TINC_PORT; fi
if [[ $TINC_PUBLIC_KEY ]]; then tinc set PublicKey $TINC_PUBLIC_KEY; fi
if [[ $TINC_PUBLIC_KEY_FILE ]]; then tinc set PublicKeyFile $TINC_PUBLIC_KEY_FILE; fi
if [[ $TINC_SUBNET ]]; then tinc set Subnet $TINC_SUBNET; fi
if [[ $TINC_TCP_ONLY ]]; then tinc set TCPOnly $TINC_TCP_ONLY; fi
if [[ $TINC_WEIGHT ]]; then tinc set Weight $TINC_WEIGHT; fi

# Create up & down scripts
echo "#!/bin/sh
ip addr add $TINC_IP dev \$INTERFACE
ip link set \$INTERFACE up" > /etc/tinc/tinc-up

echo "#!/bin/sh
ip link set \$INTERFACE down" > /etc/tinc/tinc-down

chmod 775 /etc/tinc/tinc-up
chmod 775 /etc/tinc/tinc-down
