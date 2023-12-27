# Legacy Launcher for Arch
This is a [Legacy Launcher](https://llaun.ch/en) installer that installs Legacy Launhcer to your Arch Linux system.

## How to install

1. Clone and enter the repo
    ```c 
    git clone https://github.com/MatheusTT/tlauncher-arch.git && cd tlauncher-arch
    ```
2. Change the permissions of the script
    ```c 
    chmod +x ./install.sh
    ```
3. Install Legacy Launcher
    ```c
    ./install.sh
    ```

## Usage
After the installation, you can just type `llaunch` in the terminal to launch Legacy Launcher.

If you wanna update type `llaunch --update` or `llaunch -u`, for downloading the last version of tlauncher _(It's not the best way of doing this, but it will do it for now)_.

If you wanna remove TLauncher from your system type `llaunch --remove` or `llaunch -r`, and then the Legacy Launcher files will be removed and you can opt to remove the java packages, and/or the $HOME/.tlauncher dir.
