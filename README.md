# SMR Autonomy Controller MicroK8s Platform #

This repo houses the MicroK8s templates used to orchestrate the following microservices on the SMR Autonomy Controller server:

* Kafka
* MongoDB
* Mongo-Express
* SMR-common
* SMR-sm300
* SMR-sm360
* Zookeeper (Dependency for Kafka)

The container services are controllable via a systemctrl daemon.

# Building the .deb Package #
1. Change into the repo directory.
1. Execute the build script.

`./build-deb.sh`

A .deb package 'smr-k8s-ubuntu-1.0.0.deb' will be generated in directory called 'package'.

# Clean Up Package Directory #
Execute the 'clean' script.

`./clean-deb.sh`

# Installing/Uninstalling the .deb Package on a Target AC Server #
1. Copy the .deb package to the target AC server.
    * `scp smr-k8s-ubuntu-1.0.0.deb smr@<ac_server_ip_address>:~/.`

1. Install the .deb package.
    * `dpkg -i smr-k8s-ubuntu-1.0.0.deb`

1.  Uninstall the .deb Package
    * `dpkg -r smr-k8s-ubuntu`

# Starting/Stopping the Systemctl Daemon #
* Start the container service.
    * `sudo systemctl start smr-k8s`

* Stop the container service.
    * `sudo systemctl stop smr-k8s`

* Restart the container service.
    * `sudo systemctl restart smr-k8s`