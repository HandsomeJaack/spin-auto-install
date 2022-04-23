#!/bin/bash

dependecy_list=("bison"
                "flex"
                "gcc")

for dependecy in "${dependecy_list[@]}"; do
    if ! dpkg -s $dependecy >/dev/null 2>&1 ; then
        echo "${dependecy} not found. Installing from package manager."
        if ! sudo apt-get install -y $dependecy >/dev/null 2>&1 ; then
            echo "Failed to install ${dependcy}. Try manually."
            exit 1
        fi
        echo "Installed: ${dependecy}"
    else
        echo "Found: ${dependecy}"
    fi
done

cd Spin/Src/
make
sudo cp spin /usr/local/bin