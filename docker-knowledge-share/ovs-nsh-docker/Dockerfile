FROM ubuntu:16.04

# Install openvswitch and build dependencies
RUN apt-get update -y\
    && apt-get install -y\
        openvswitch-switch\
        git\
        linux-headers-`uname -r`\
        libtool\
        m4\
        autoconf\
        automake\
        make\
        libssl-dev\
        libcap-ng-dev\
        python3\
        python-six\
        vlan\
        iptables

# Clone repositories, apply patches, build & install

RUN    git clone https://github.com/openvswitch/ovs.git
RUN    git clone https://github.com/yyang13/ovs_nsh_patches.git
RUN    git config --global user.email "nsh_patcher@ovs_user.com"
RUN    git config --global user.name "nsh_patcher"
RUN    cd ovs && git reset --hard v2.6.1 && cp ../ovs_nsh_patches/v2.6.1/*.patch ./ && git am *.patch\
       && ./boot.sh \
&& ./configure --prefix=/usr --with-linux=/lib/modules/`uname -r`/build\
&& make -j3 modules_install\
&& make install

ENTRYPOINT ovsdb-server /usr/etc/openvswitch/conf.db -vconsole:emer -vsyslog:err -vfile:info \
--remote=punix:/usr/var/run/openvswitch/db.sock --private-key=db:Open_vSwitch,SSL,private_key \
--certificate=db:Open_vSwitch,SSL,certificate --bootstrap-ca-cert=db:Open_vSwitch,SSL,ca_cert \
--no-chdir --log-file=/usr/var/log/openvswitch/ovsdb-server.log \
--pidfile=/usr/var/run/openvswitch/ovsdb-server.pid --detach \
&& ovs-vswitchd unix:/usr/var/run/openvswitch/db.sock -vconsole:emer -vsyslog:err -vfile:info \
--mlockall --no-chdir --log-file=/usr/var/log/openvswitch/ovs-vswitchd.log \
--pidfile=/usr/var/run/openvswitch/ovs-vswitchd.pid
