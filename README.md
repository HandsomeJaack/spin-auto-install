# Spin Model Checker automated installation for Linux

To install Spin Model Checker you need to clone this project with following command:
```
git clone --recurse-submodules https://github.com/HandsomeJaack/spin-auto-install.git
```
In order do download Spin source code. Further you need to give executable permissons for `install.sh` to install all of it's dependencies:
```
chmod +x ./install.sh
```
To install all packages script should be executed from root:
```
sudo ./install.sh
```
The script eventually installs `spin` into `/usr/local/bin` and can be availaible from any folder, with full syntax support. For `ltl` the following command can be used:
```
spin -search -a -ltl p1 foo.pml
```

