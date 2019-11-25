# erlang-box
A Vagrant box for getting started with Erlang &amp; Cloud9

## Content
- Ubuntu 18.04
- Erlang/OTP latest version from Erlang Solutions
- Rebar3 latest version
- Cloud9

## Pre-requisites
- Virtualbox
```bash
$ pacman -S virtualbox
```
- Vagrant
```
$ pacman -S vagrant
```

## Usage
```bash
# run the vm
$ vagrant up

# access the vm via ssh
$ vagrant ssh

# halt the vm
$ vagrant halt
```


## Synced folders

HOST: ~ will be synced to VM: ~/host-home
VM: /vagrant/Workspace will be created/synced to HOST: erlang-box/Workspace


## Open Cloud9

Browse to localhost:8282 while vm is up.
Workspace directory will be available to share/sync files.


## Troubleshooting

OS: Kernel 5.3.11-1-MANJARO (Manjaro Linux Juhraya 18.1.3)

Install:
```bash
$ yay -S linux53-virtualbox-guest-modules linux53-virtualbox-host-modules linux53-virtualbox-guest-modules linux53-virtualbox-host-modules virtualbox-guest-dkms virtualbox-guest-utils virtualbox-host-dkms
```
Then, reboot.

Maybe you have to run the following commands:
```bash
$ systemctl enable dkms.service
$ modprobe vboxdrv
```

## References

http://manjaro-linux.com.br/forum/dicas-truques/resolvendo-problemas-com-a-criacao-de-vm-no-virtualbox-t1235.html

