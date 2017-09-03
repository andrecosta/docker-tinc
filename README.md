# Containerized tinc daemon

Dockerfile (c) 2016 B&S Sistemas de Control, info@bys-control.com.ar

> [tinc](http://www.tinc-vpn.org) is a Virtual Private Network (VPN) daemon that uses tunnelling and encryption to create a secure private network between hosts on the Internet.

This Dockerfile provides an image for running tinc, compiled from source.

There

## Usage

The default entrypoint of the container is supervisord, which controls tinc execution and daemon restart in case of unexpected exit.

If you need to issue commands to tinc daemon inside container, you can do for example `docker run byscontrol/tinc tinc dump nodes`. Tinc's configuration is persisted as a volume, you can also share a host folder in `/etc/tinc`.

## Running

tinc requires access to `/dev/net/tun`. Allow the container access to the device and grant the `NET_ADMIN` capability:

    --device=/dev/net/tun --cap-add NET_ADMIN

To make the VPN available to the host, and not only (linked) containers, use `--net=host`.

### Example

A basic run command loading persisted configuration from `/srv/tinc` and creating the VPN on the host network would be

    docker run -d \
        --name tinc \
        --net=host \
        --device=/dev/net/tun \
        --cap-add NET_ADMIN \
        --volume tinc:/etc/tinc \
        -e TINC_NAME:client1 \
        -e TINC_IP:10.0.1.1 \
        -e TINC_SUBNET:10.0.1.1 \
        byscontrol/tinc

## Administration and Maintenance

Tinc is configured during container startup using environment variables passed to docker run command. All tinc configuration parameters specified in [tinc documentation](http://www.tinc-vpn.org/documentation-1.1/) are available as follows:

### Main configuration
* **AddressFamily**: TINC_ADDRESS_FAMILY
* **AutoConnect**: TINC_AUTO_CONNECT
* **BindToAddress**: TINC_BIND_TO_ADDRESS
* **BindToInterface**: TINC_BIND_TO_INTERFACE
* **Broadcast**: TINC_BROADCAST
* **BroadcastSubnet**: TINC_BROADCAST_SUBNET
* **ConnectTo**: TINC_CONNECT_TO
* **DecrementTTL**: TINC_DECREMENT_TTL
* **Device**: TINC_DEVICE
* **DeviceStandby**: TINC_DEVICE_STANDBY
* **DeviceType**: TINC_DEVICE_TYPE
* **DirectOnly**: TINC_DIRECT_ONLY
* **Ed25519PrivateKeyFile**: TINC_ED25519_PRIVATE_KEY_FILE
* **ExperimentalProcotol**: TINC_EXPERIMENTAL_PROCOTOL
* **Forwarding**: TINC_FORWARDING
* **Hostnames**: TINC_HOSTNAMES
* **Interface**: TINC_INTERFACE
* **ListenAddress**: TINC_LISTEN_ADDRESS
* **LocalDiscovery**: TINC_LOCAL_DISCOVERY
* **LocalDiscoveryAddress**: TINC_LOCAL_DISCOVERY_ADDRESS
* **Mode**: TINC_MODE
* **KeyExpire**: TINC_KEY_EXPIRE
* **MACExpire**: TINC_MAC_EXPIRE
* **MaxConnectionBurst**: TINC_MAX_CONNECTION_BURST
* **Name**: TINC_NAME
* **PingInterval**: TINC_PING_INTERVAL
* **PingTimeout**: TINC_PING_TIMEOUT
* **PriorityInheritance**: TINC_PRIORITY_INHERITANCE
* **PrivateKey**: TINC_PRIVATE_KEY
* **PrivateKeyFile**: TINC_PRIVATE_KEY_FILE
* **ProcessPriority**: TINC_PROCESS_PRIORITY
* **Proxy**: TINC_PROXY
* **ReplayWindow**: TINC_REPLAY_WINDOW
* **StrictSubnets**: TINC_STRICT_SUBNETS
* **TunnelServer**: TINC_TUNNEL_SERVER
* **UDPDiscovery**: TINC_UDP_DISCOVERY
* **UDPDiscoveryKeepaliveInterval**: TINC_UDP_DISCOVERY_KEEPALIVE_INTERVAL
* **UDPDiscoveryInterval**: TINC_UDP_DISCOVERY_INTERVAL
* **UDPDiscoveryTimeout**: TINC_UDP_DISCOVERY_TIMEOUT
* **UDPInfoInterval**: TINC_UDP_INFO_INTERVAL
* **UDPRcvBuf**: TINC_UDP_RCV_BUF
* **UDPSndBuf**: TINC_UDP_SND_BUF
* **UPnP**: TINC_UPNP
* **UPnPDiscoverWait**: TINC_UPNP_DISCOVER_WAIT
* **UPnPRefreshPeriod**: TINC_UPNP_REFRESH_PERIOD

### Host configuration
* **Address**: TINC_ADDRESS
* **Cipher**: TINC_CIPHER
* **ClampMMS**: TINC_CLAMP_MMS
* **Compression**: TINC_COMPRESSION
* **Digest**: TINC_DIGEST
* **IndirectData**: TINC_INDIRECT_DATA
* **MACLength**: TINC_MAC_LENGTH
* **PMTU**: TINC_PMTU
* **PMTUDiscovery**: TINC_PMTU_DISCOVERY
* **MTUInfoInterval**: TINC_MTU_INFO_INTERVAL
* **Port**: TINC_PORT
* **PublicKey**: TINC_PUBLIC_KEY
* **PublicKeyFile**: TINC_PUBLIC_KEY_FILE
* **Subnet**: TINC_SUBNET
* **TCPOnly**: TINC_TCP_ONLY
* **Weight**: TINC_WEIGHT
