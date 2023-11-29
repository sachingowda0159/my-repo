#!/bin/bash

#get the package name

package_name=$(sudo cat /etc/os-release | sed -n 6p)


debian=$(name=ubuntu)
redhat=$(name=others)

if [[ $package_name -eq $debian ]]; then
	package_manager="apt"
elif [[ $package_name -eq $redhat ]]; then
        package_manager="yum"
fi

#Read the configuration file
packages_file="packages.txt"
while read package; do
	sudo $package_manager install $package -y
done < $packages_file

