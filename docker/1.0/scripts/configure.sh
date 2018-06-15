#!/bin/bash

TINC_SERVER_CONF=/etc/tinc/tinc.conf
TINC_HOST_CONF=/etc/tinc/hosts/$TINC_NAME

# Create initial private tinc keys
if [ ! -f "/etc/tinc/rsa_key.priv" ]; then tincd -K; fi

mkdir -p /etc/tinc/hosts

# Main configuration variables
grep -q "^Name" $TINC_SERVER_CONF && sed -i "s/^Name.*/Name=$TINC_NAME/" $TINC_SERVER_CONF || echo "Name=$TINC_NAME" >> $TINC_SERVER_CONF
if [[ $TINC_ADDRESS_FAMILY ]]; then grep -q "^AddressFamily" $TINC_SERVER_CONF && sed -i "s/^AddressFamily.*/AddressFamily=$TINC_ADDRESS_FAMILY/" $TINC_SERVER_CONF || echo "AddressFamily=$TINC_ADDRESS_FAMILY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_AUTO_CONNECT ]]; then grep -q "^AutoConnect" $TINC_SERVER_CONF && sed -i "s/^AutoConnect.*/AutoConnect=$TINC_AUTO_CONNECT/" $TINC_SERVER_CONF || echo "AutoConnect=$TINC_AUTO_CONNECT" >> $TINC_SERVER_CONF; fi
if [[ $TINC_BIND_TO_ADDRESS ]]; then grep -q "^BindToAddress" $TINC_SERVER_CONF && sed -i "s/^BindToAddress.*/BindToAddress=$TINC_BIND_TO_ADDRESS/" $TINC_SERVER_CONF || echo "BindToAddress=$TINC_BIND_TO_ADDRESS" >> $TINC_SERVER_CONF; fi
if [[ $TINC_BIND_TO_INTERFACE ]]; then grep -q "^BindToInterface" $TINC_SERVER_CONF && sed -i "s/^BindToInterface.*/BindToInterface=$TINC_BIND_TO_INTERFACE/" $TINC_SERVER_CONF || echo "BindToInterface=$TINC_BIND_TO_INTERFACE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_BROADCAST ]]; then grep -q "^Broadcast" $TINC_SERVER_CONF && sed -i "s/^Broadcast.*/Broadcast=$TINC_BROADCAST/" $TINC_SERVER_CONF || echo "Broadcast=$TINC_BROADCAST" >> $TINC_SERVER_CONF; fi
if [[ $TINC_BROADCAST_SUBNET ]]; then grep -q "^BroadcastSubnet" $TINC_SERVER_CONF && sed -i "s/^BroadcastSubnet.*/BroadcastSubnet=$TINC_BROADCAST_SUBNET/" $TINC_SERVER_CONF || echo "BroadcastSubnet=$TINC_BROADCAST_SUBNET" >> $TINC_SERVER_CONF; fi
if [[ $TINC_CONNECT_TO ]]; then grep -q "^ConnectTo" $TINC_SERVER_CONF && sed -i "s/^ConnectTo.*/ConnectTo=$TINC_CONNECT_TO/" $TINC_SERVER_CONF || echo "ConnectTo=$TINC_CONNECT_TO" >> $TINC_SERVER_CONF; fi
if [[ $TINC_DECREMENT_TTL ]]; then grep -q "^DecrementTTL" $TINC_SERVER_CONF && sed -i "s/^DecrementTTL.*/DecrementTTL=$TINC_DECREMENT_TTL/" $TINC_SERVER_CONF || echo "DecrementTTL=$TINC_DECREMENT_TTL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_DEVICE ]]; then grep -q "^Device" $TINC_SERVER_CONF && sed -i "s/^Device.*/Device=$TINC_DEVICE/" $TINC_SERVER_CONF || echo "Device=$TINC_DEVICE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_DEVICE_STANDBY ]]; then grep -q "^DeviceStandby" $TINC_SERVER_CONF && sed -i "s/^DeviceStandby.*/DeviceStandby=$TINC_DEVICE_STANDBY/" $TINC_SERVER_CONF || echo "DeviceStandby=$TINC_DEVICE_STANDBY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_DEVICE_TYPE ]]; then grep -q "^DeviceType" $TINC_SERVER_CONF && sed -i "s/^DeviceType.*/DeviceType=$TINC_DEVICE_TYPE/" $TINC_SERVER_CONF || echo "DeviceType=$TINC_DEVICE_TYPE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_DIRECT_ONLY ]]; then grep -q "^DirectOnly" $TINC_SERVER_CONF && sed -i "s/^DirectOnly.*/DirectOnly=$TINC_DIRECT_ONLY/" $TINC_SERVER_CONF || echo "DirectOnly=$TINC_DIRECT_ONLY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_ED25519_PRIVATE_KEY_FILE ]]; then grep -q "^Ed25519PrivateKeyFile" $TINC_SERVER_CONF && sed -i "s/^Ed25519PrivateKeyFile.*/Ed25519PrivateKeyFile=$TINC_ED25519_PRIVATE_KEY_FILE/" $TINC_SERVER_CONF || echo "Ed25519PrivateKeyFile=$TINC_ED25519_PRIVATE_KEY_FILE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_EXPERIMENTAL_PROCOTOL ]]; then grep -q "^ExperimentalProcotol" $TINC_SERVER_CONF && sed -i "s/^ExperimentalProcotol.*/ExperimentalProcotol=$TINC_EXPERIMENTAL_PROCOTOL/" $TINC_SERVER_CONF || echo "ExperimentalProcotol=$TINC_EXPERIMENTAL_PROCOTOL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_FORWARDING ]]; then grep -q "^Forwarding" $TINC_SERVER_CONF && sed -i "s/^Forwarding.*/Forwarding=$TINC_FORWARDING/" $TINC_SERVER_CONF || echo "Forwarding=$TINC_FORWARDING" >> $TINC_SERVER_CONF; fi
if [[ $TINC_HOSTNAMES ]]; then grep -q "^Hostnames" $TINC_SERVER_CONF && sed -i "s/^Hostnames.*/Hostnames=$TINC_HOSTNAMES/" $TINC_SERVER_CONF || echo "Hostnames=$TINC_HOSTNAMES" >> $TINC_SERVER_CONF; fi
if [[ $TINC_INTERFACE ]]; then grep -q "^Interface" $TINC_SERVER_CONF && sed -i "s/^Interface.*/Interface=$TINC_INTERFACE/" $TINC_SERVER_CONF || echo "Interface=$TINC_INTERFACE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_LISTEN_ADDRESS ]]; then grep -q "^ListenAddress" $TINC_SERVER_CONF && sed -i "s/^ListenAddress.*/ListenAddress=$TINC_LISTEN_ADDRESS/" $TINC_SERVER_CONF || echo "ListenAddress=$TINC_LISTEN_ADDRESS" >> $TINC_SERVER_CONF; fi
if [[ $TINC_LOCAL_DISCOVERY ]]; then grep -q "^LocalDiscovery" $TINC_SERVER_CONF && sed -i "s/^LocalDiscovery.*/LocalDiscovery=$TINC_LOCAL_DISCOVERY/" $TINC_SERVER_CONF || echo "LocalDiscovery=$TINC_LOCAL_DISCOVERY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_LOCAL_DISCOVERY_ADDRESS ]]; then grep -q "^LocalDiscoveryAddress" $TINC_SERVER_CONF && sed -i "s/^LocalDiscoveryAddress.*/LocalDiscoveryAddress=$TINC_LOCAL_DISCOVERY_ADDRESS/" $TINC_SERVER_CONF || echo "LocalDiscoveryAddress=$TINC_LOCAL_DISCOVERY_ADDRESS" >> $TINC_SERVER_CONF; fi
if [[ $TINC_MODE ]]; then grep -q "^Mode" $TINC_SERVER_CONF && sed -i "s/^Mode.*/Mode=$TINC_MODE/" $TINC_SERVER_CONF || echo "Mode=$TINC_MODE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_KEY_EXPIRE ]]; then grep -q "^KeyExpire" $TINC_SERVER_CONF && sed -i "s/^KeyExpire.*/KeyExpire=$TINC_KEY_EXPIRE/" $TINC_SERVER_CONF || echo "KeyExpire=$TINC_KEY_EXPIRE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_MAC_EXPIRE ]]; then grep -q "^MACExpire" $TINC_SERVER_CONF && sed -i "s/^MACExpire.*/MACExpire=$TINC_MAC_EXPIRE/" $TINC_SERVER_CONF || echo "MACExpire=$TINC_MAC_EXPIRE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_MAX_CONNECTION_BURST ]]; then grep -q "^MaxConnectionBurst" $TINC_SERVER_CONF && sed -i "s/^MaxConnectionBurst.*/MaxConnectionBurst=$TINC_MAX_CONNECTION_BURST/" $TINC_SERVER_CONF || echo "MaxConnectionBurst=$TINC_MAX_CONNECTION_BURST" >> $TINC_SERVER_CONF; fi
if [[ $TINC_NAME ]]; then grep -q "^Name" $TINC_SERVER_CONF && sed -i "s/^Name.*/Name=$TINC_NAME/" $TINC_SERVER_CONF || echo "Name=$TINC_NAME" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PING_INTERVAL ]]; then grep -q "^PingInterval" $TINC_SERVER_CONF && sed -i "s/^PingInterval.*/PingInterval=$TINC_PING_INTERVAL/" $TINC_SERVER_CONF || echo "PingInterval=$TINC_PING_INTERVAL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PING_TIMEOUT ]]; then grep -q "^PingTimeout" $TINC_SERVER_CONF && sed -i "s/^PingTimeout.*/PingTimeout=$TINC_PING_TIMEOUT/" $TINC_SERVER_CONF || echo "PingTimeout=$TINC_PING_TIMEOUT" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PRIORITY_INHERITANCE ]]; then grep -q "^PriorityInheritance" $TINC_SERVER_CONF && sed -i "s/^PriorityInheritance.*/PriorityInheritance=$TINC_PRIORITY_INHERITANCE/" $TINC_SERVER_CONF || echo "PriorityInheritance=$TINC_PRIORITY_INHERITANCE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PRIVATE_KEY ]]; then grep -q "^PrivateKey" $TINC_SERVER_CONF && sed -i "s/^PrivateKey.*/PrivateKey=$TINC_PRIVATE_KEY/" $TINC_SERVER_CONF || echo "PrivateKey=$TINC_PRIVATE_KEY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PRIVATE_KEY_FILE ]]; then grep -q "^PrivateKeyFile" $TINC_SERVER_CONF && sed -i "s/^PrivateKeyFile.*/PrivateKeyFile=$TINC_PRIVATE_KEY_FILE/" $TINC_SERVER_CONF || echo "PrivateKeyFile=$TINC_PRIVATE_KEY_FILE" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PROCESS_PRIORITY ]]; then grep -q "^ProcessPriority" $TINC_SERVER_CONF && sed -i "s/^ProcessPriority.*/ProcessPriority=$TINC_PROCESS_PRIORITY/" $TINC_SERVER_CONF || echo "ProcessPriority=$TINC_PROCESS_PRIORITY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_PROXY ]]; then grep -q "^Proxy" $TINC_SERVER_CONF && sed -i "s/^Proxy.*/Proxy=$TINC_PROXY/" $TINC_SERVER_CONF || echo "Proxy=$TINC_PROXY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_REPLAY_WINDOW ]]; then grep -q "^ReplayWindow" $TINC_SERVER_CONF && sed -i "s/^ReplayWindow.*/ReplayWindow=$TINC_REPLAY_WINDOW/" $TINC_SERVER_CONF || echo "ReplayWindow=$TINC_REPLAY_WINDOW" >> $TINC_SERVER_CONF; fi
if [[ $TINC_STRICT_SUBNETS ]]; then grep -q "^StrictSubnets" $TINC_SERVER_CONF && sed -i "s/^StrictSubnets.*/StrictSubnets=$TINC_STRICT_SUBNETS/" $TINC_SERVER_CONF || echo "StrictSubnets=$TINC_STRICT_SUBNETS" >> $TINC_SERVER_CONF; fi
if [[ $TINC_TUNNEL_SERVER ]]; then grep -q "^TunnelServer" $TINC_SERVER_CONF && sed -i "s/^TunnelServer.*/TunnelServer=$TINC_TUNNEL_SERVER/" $TINC_SERVER_CONF || echo "TunnelServer=$TINC_TUNNEL_SERVER" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_DISCOVERY ]]; then grep -q "^UDPDiscovery" $TINC_SERVER_CONF && sed -i "s/^UDPDiscovery.*/UDPDiscovery=$TINC_UDP_DISCOVERY/" $TINC_SERVER_CONF || echo "UDPDiscovery=$TINC_UDP_DISCOVERY" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL ]]; then grep -q "^UDPDiscoveryKeepaliveInterval" $TINC_SERVER_CONF && sed -i "s/^UDPDiscoveryKeepaliveInterval.*/UDPDiscoveryKeepaliveInterval=$TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL/" $TINC_SERVER_CONF || echo "UDPDiscoveryKeepaliveInterval=$TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_DISCOVERY_INTERVAL ]]; then grep -q "^UDPDiscoveryInterval" $TINC_SERVER_CONF && sed -i "s/^UDPDiscoveryInterval.*/UDPDiscoveryInterval=$TINC_UDP_DISCOVERY_INTERVAL/" $TINC_SERVER_CONF || echo "UDPDiscoveryInterval=$TINC_UDP_DISCOVERY_INTERVAL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_DISCOVERY_TIMEOUT ]]; then grep -q "^UDPDiscoveryTimeout" $TINC_SERVER_CONF && sed -i "s/^UDPDiscoveryTimeout.*/UDPDiscoveryTimeout=$TINC_UDP_DISCOVERY_TIMEOUT/" $TINC_SERVER_CONF || echo "UDPDiscoveryTimeout=$TINC_UDP_DISCOVERY_TIMEOUT" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_INFO_INTERVAL ]]; then grep -q "^UDPInfoInterval" $TINC_SERVER_CONF && sed -i "s/^UDPInfoInterval.*/UDPInfoInterval=$TINC_UDP_INFO_INTERVAL/" $TINC_SERVER_CONF || echo "UDPInfoInterval=$TINC_UDP_INFO_INTERVAL" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_RCV_BUF ]]; then grep -q "^UDPRcvBuf" $TINC_SERVER_CONF && sed -i "s/^UDPRcvBuf.*/UDPRcvBuf=$TINC_UDP_RCV_BUF/" $TINC_SERVER_CONF || echo "UDPRcvBuf=$TINC_UDP_RCV_BUF" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UDP_SND_BUF ]]; then grep -q "^UDPSndBuf" $TINC_SERVER_CONF && sed -i "s/^UDPSndBuf.*/UDPSndBuf=$TINC_UDP_SND_BUF/" $TINC_SERVER_CONF || echo "UDPSndBuf=$TINC_UDP_SND_BUF" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UPNP ]]; then grep -q "^UPnP" $TINC_SERVER_CONF && sed -i "s/^UPnP.*/UPnP=$TINC_UPNP/" $TINC_SERVER_CONF || echo "UPnP=$TINC_UPNP" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UPNP_DISCOVER_WAIT ]]; then grep -q "^UPnPDiscoverWait" $TINC_SERVER_CONF && sed -i "s/^UPnPDiscoverWait.*/UPnPDiscoverWait=$TINC_UPNP_DISCOVER_WAIT/" $TINC_SERVER_CONF || echo "UPnPDiscoverWait=$TINC_UPNP_DISCOVER_WAIT" >> $TINC_SERVER_CONF; fi
if [[ $TINC_UPNP_REFRESH_PERIOD ]]; then grep -q "^UPnPRefreshPeriod" $TINC_SERVER_CONF && sed -i "s/^UPnPRefreshPeriod.*/UPnPRefreshPeriod=$TINC_UPNP_REFRESH_PERIOD/" $TINC_SERVER_CONF || echo "UPnPRefreshPeriod=$TINC_UPNP_REFRESH_PERIOD" >> $TINC_SERVER_CONF; fi

# Configure host
cat /etc/tinc/rsa_key.pub > /etc/tinc/hosts/$TINC_NAME
if [[ $TINC_ADDRESS ]]; then grep -q "^Address" $TINC_HOST_CONF && sed -i "s/^Address.*/Address=$TINC_ADDRESS/" $TINC_HOST_CONF || echo "Address=$TINC_ADDRESS" >> $TINC_HOST_CONF; fi
if [[ $TINC_CIPHER ]]; then grep -q "^Cipher" $TINC_HOST_CONF && sed -i "s/^Cipher.*/Cipher=$TINC_CIPHER/" $TINC_HOST_CONF || echo "Cipher=$TINC_CIPHER" >> $TINC_HOST_CONF; fi
if [[ $TINC_CLAMP_MMS ]]; then grep -q "^ClampMMS" $TINC_HOST_CONF && sed -i "s/^ClampMMS.*/ClampMMS=$TINC_CLAMP_MMS/" $TINC_HOST_CONF || echo "ClampMMS=$TINC_CLAMP_MMS" >> $TINC_HOST_CONF; fi
if [[ $TINC_COMPRESSION ]]; then grep -q "^Compression" $TINC_HOST_CONF && sed -i "s/^Compression.*/Compression=$TINC_COMPRESSION/" $TINC_HOST_CONF || echo "Compression=$TINC_COMPRESSION" >> $TINC_HOST_CONF; fi
if [[ $TINC_DIGEST ]]; then grep -q "^Digest" $TINC_HOST_CONF && sed -i "s/^Digest.*/Digest=$TINC_DIGEST/" $TINC_HOST_CONF || echo "Digest=$TINC_DIGEST" >> $TINC_HOST_CONF; fi
if [[ $TINC_INDIRECT_DATA ]]; then grep -q "^IndirectData" $TINC_HOST_CONF && sed -i "s/^IndirectData.*/IndirectData=$TINC_INDIRECT_DATA/" $TINC_HOST_CONF || echo "IndirectData=$TINC_INDIRECT_DATA" >> $TINC_HOST_CONF; fi
if [[ $TINC_MAC_LENGTH ]]; then grep -q "^MACLength" $TINC_HOST_CONF && sed -i "s/^MACLength.*/MACLength=$TINC_MAC_LENGTH/" $TINC_HOST_CONF || echo "MACLength=$TINC_MAC_LENGTH" >> $TINC_HOST_CONF; fi
if [[ $TINC_PMTU ]]; then grep -q "^PMTU" $TINC_HOST_CONF && sed -i "s/^PMTU.*/PMTU=$TINC_PMTU/" $TINC_HOST_CONF || echo "PMTU=$TINC_PMTU" >> $TINC_HOST_CONF; fi
if [[ $TINC_PMTU_DISCOVERY ]]; then grep -q "^PMTUDiscovery" $TINC_HOST_CONF && sed -i "s/^PMTUDiscovery.*/PMTUDiscovery=$TINC_PMTU_DISCOVERY/" $TINC_HOST_CONF || echo "PMTUDiscovery=$TINC_PMTU_DISCOVERY" >> $TINC_HOST_CONF; fi
if [[ $TINC_MTU_INFO_INTERVAL ]]; then grep -q "^MTUInfoInterval" $TINC_HOST_CONF && sed -i "s/^MTUInfoInterval.*/MTUInfoInterval=$TINC_MTU_INFO_INTERVAL/" $TINC_HOST_CONF || echo "MTUInfoInterval=$TINC_MTU_INFO_INTERVAL" >> $TINC_HOST_CONF; fi
if [[ $TINC_PORT ]]; then grep -q "^Port" $TINC_HOST_CONF && sed -i "s/^Port.*/Port=$TINC_PORT/" $TINC_HOST_CONF || echo "Port=$TINC_PORT" >> $TINC_HOST_CONF; fi
if [[ $TINC_PUBLIC_KEY ]]; then grep -q "^PublicKey" $TINC_HOST_CONF && sed -i "s/^PublicKey.*/PublicKey=$TINC_PUBLIC_KEY/" $TINC_HOST_CONF || echo "PublicKey=$TINC_PUBLIC_KEY" >> $TINC_HOST_CONF; fi
if [[ $TINC_PUBLIC_KEY_FILE ]]; then grep -q "^PublicKeyFile" $TINC_HOST_CONF && sed -i "s/^PublicKeyFile.*/PublicKeyFile=$TINC_PUBLIC_KEY_FILE/" $TINC_HOST_CONF || echo "PublicKeyFile=$TINC_PUBLIC_KEY_FILE" >> $TINC_HOST_CONF; fi
if [[ $TINC_SUBNET ]]; then grep -q "^Subnet" $TINC_HOST_CONF && sed -i "s/^Subnet.*/Subnet=$TINC_SUBNET/" $TINC_HOST_CONF || echo "Subnet=$TINC_SUBNET" >> $TINC_HOST_CONF; fi
if [[ $TINC_TCP_ONLY ]]; then grep -q "^TCPOnly" $TINC_HOST_CONF && sed -i "s/^TCPOnly.*/TCPOnly=$TINC_TCP_ONLY/" $TINC_HOST_CONF || echo "TCPOnly=$TINC_TCP_ONLY" >> $TINC_HOST_CONF; fi
if [[ $TINC_WEIGHT ]]; then grep -q "^Weight" $TINC_HOST_CONF && sed -i "s/^Weight.*/Weight=$TINC_WEIGHT/" $TINC_HOST_CONF || echo "Weight=$TINC_WEIGHT" >> $TINC_HOST_CONF; fi

# Create up & down scripts
echo "#!/bin/sh
ip addr add $TINC_IP dev \$INTERFACE
ip link set \$INTERFACE up" > /etc/tinc/tinc-up

echo "#!/bin/sh
ip link set \$INTERFACE down" > /etc/tinc/tinc-down

chmod 775 /etc/tinc/tinc-up
chmod 775 /etc/tinc/tinc-down
