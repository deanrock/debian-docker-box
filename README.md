# Debian + Docker box

[Bento](https://github.com/chef/bento)'s Packer Debian template modified to include Docker related packages.

## Packages

* Docker
* docker-compose
* heroku cli

### Build

```bash
cd debian/
packer build -only=virtualbox-iso debian-9.4-amd64.json
```

### Requirements

- [Packer](https://www.packer.io/)
- [VirtualBox](https://www.virtualbox.org)
