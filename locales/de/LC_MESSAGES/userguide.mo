��    �      �              	  {  	  R   �
  �   �
     z     �  1   �    �  :  �  �     
   �     �     �  b   �  "   ?     b     u  	   �     �  	   �  	   �     �     �     �     �  2   �     *  E   �  <   �     -     D  w   Z  �   �  �   q  �     �   �  �   l  �   	     �     �     �  !   �  =    �   J  J   �  7   *  �   b     �  	   �            b  (     �  5  �  ,   �  3   �     (  �   C  F        S     _     k  :   x  	   �  	   �  1   �     �  D        J  (   X  }   �     �  g     2   p  �   �  |   3   U   �      !  
   !     $!     6!     H!  .   a!     �!     �!     �!  �   �!  �   �"  �   �#     5$     ;$  5  S$  f   �%  L   �%  �  =&  �   �'  {   �(  |   )     �)  �   �)  B   I*  '   �*  #   �*  M   �*    &+  	   4,     >,     J,    Q,  T   n-    �-  /   �.  "   /  T   +/  W   �/  6   �/  �   0  j   �0  Q   1  j   a1  >   �1  �   2  ?   �2  >    3  >   ?3  ?   ~3  1   �3  /   �3  )    4  $   J4  >   o4  �   �4  �   L5  W   6  A   ]6  J   �6  V   �6  g   A7  1   �7  I   �7  =   %8  -   c8  $   �8  |  �8  {  3:  R   �;  �   <     �<     �<  1   �<    �<  :  �=  �   :?  
   �?     �?     �?  b   @  "   e@     �@     �@  	   �@     �@  	   �@  	   �@     �@     �@     	A     A  2   A     PA  E   �A  <   B     SB     jB  w   �B  �   �B  �   �C  �   :D  �   �D  �   �E  �   /F     �F     �F     �F  !   G  =  2G  �   pH  J   I  7   PI  �   �I     J  	   J     (J     <J  b  NJ     �K  5  �K  ,   �L  3   M     NM  �   iM  F   2N     yN     �N     �N  :   �N  	   �N  	   �N  1   �N     O  D   +O     pO  (   ~O  }   �O     %P  g   .P  2   �P  �   �P  |   YQ  U   �Q     ,R  
   ?R     JR     \R     nR  .   �R     �R     �R     �R  �   �R  �   �S  �   �T     [U     aU  5  yU  f   �V  L   W  �  cW  �   Y  {   �Y  |   ,Z     �Z  �   �Z  B   o[  '   �[  #   �[  M   �[    L\  	   Z]     d]     p]    w]  T   �^    �^  /   �_  "   .`  T   Q`  W   �`  6   �`  �   5a  j   �a  Q   5b  j   �b  >   �b  �   1c  ?   �c  >   &d  >   ed  ?   �d  1   �d  /   e  )   Fe  $   pe  >   �e  �   �e  �   rf  W   +g  A   �g  J   �g  V   h  g   gh  1   �h  I   i  =   Ki  -   �i  $   �i   A display server coordinates input and output of an operating system. Most Linux distributions today use the X server. Ubuntu Touch does not use X, but  a new display server called Mir. This means that standard X applications are not directly compatible with Ubuntu Touch. A compatibility layer called XMir resolves this. Libertine relies on XMir to display desktop applications. A root directory ``~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/`` and ADB doesn't always know what devices on your computer it should or should not talk to. You can manually add the devices that it does not know how to talk to. Add hardware IDs Advanced use And on MacOS with `Homebrew <https://brew.sh>`_:: Another challenge is that Ubuntu Touch system updates are released as OTA images. A consequence of this is that the root filesystem is read only. Libertine provides a container with a read-write filesystem to allow the installation of regular Linux desktop applications. BE VERY CAREFUL! Getting this part wrong can permanantly damage or brick your device. NEVER check the "Format All" option in SP Flash Tool and carefully read everything that it tells you. Some users have destroyed the partition that holds their hardware IDs and can no longer connect to Wi-Fi or cellular networks. BQ devices: Download the official Ubuntu Edition firmware from `their website <http://www.mibqyyo.com/en-download/>`_ and use their SP Flash Tool to flash it. Background Configure your device Connect Connect the ubports device and the PC with a USB cable. Then copy the file using your filemanager. Copy the public key to your device Create a container Create your public key Daily use Destroy a container Documents Downloads Enable developer mode Example script Fairphone 2:: Files First, you'll need ADB installed on your computer. For Windows, grab the command-line tools only package from `here <https://developer.android.com/studio/index.html#downloads>`_. For every container you create there will be two directories created: For example, to get a shell into your container you can run: For real time casting: For stream recording: Forward and gzip stream with 60fps (--cap-interval 1) and frame size of 384x640 to computer 10.42.0.209 on port 1234 :: Go to `the download page <https://github.com/ubports/ubports-installer/releases/latest>`_ and download the version of the installer for your operating system: If not already created, create your public key, default choices should be fine for LAN, you can leave empty password if you don't want to deal with it each time:: If there's a device in the list here (The command doesn't print "List of devices attached" and a blank line), you are able to use ADB successfully. If not, continue to the next section. If you have more than one container, then you can use the option ``-i CONTAINER-IDENTIFIER`` to specify for which container you want to perform an operation. If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/introduction>`. If your're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it. Install ADB Install Ubuntu Touch Install a package: Install on legacy Android devices Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to less technical users. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <devices.ubports.com>`_ from your Linux, Mac or Windows computer. Just run the command for your selected device if it's below. Then, run ``adb kill-server`` followed by the command you were initially trying to run. Libertine allows you to use standard desktop applications in Ubuntu Touch. Libertine applications do have access to these folders: Linux: ubports-installer-<version-number>.deb, ubports-installer-<version-number>.snap or ubports-installer-<version-number>.AppImage List containers Locations Manage applications Manage containers Meizu devices: You are pretty much stuck on Flyme. For the MX4, there are some instructions floating around for downgrading your OS, gaining root with an exploit, unlocking your bootloader, and so on. We aren't going to link to them here for obvious reasons. The Pro5 is Exynos-based and has its own headaches. You're even more at your own risk on these. Music NB: ``timeout`` here is used in order to kill process properly on device ( here 120 seconds ). Otherwise process still continuing even if killed on computer. You can reduce or increase frame per second with``--cap-interval`` (1 = 60fps, 2=30fps, ...)  and size of frames ``384 640`` means width=384 height=640 Next, you'll need to turn on Developer Mode. Now everything is set up and you can use ``ssh`` :: Now start the ssh server:: Now you have the public key on the UBports device. Let's assume it's stored as ``/home/phablet/id_rsa.pub``. Use the terminal app or and adb connection to perform the following steps on your phone. :: Of course you can now also use ``scp`` or ``sshfs`` to transfer files. On Fedora:: On Ubuntu:: On computer: On computer: get your rndis ip address e.g:``hostname -I`` On device On phone: On phone: ``android-gadget-service enable rndis`` On receiver Once a container is set up, you can list the installed applications: Oneplus One:: Open a terminal and run ``adb devices``. Or transfer the key via the internet by mailing it to yourself, or uploading it to your own cloud storage, or webserver, etc. Pictures Place your device into developer mode (Settings - About - Developer Mode - check the box to turn it on) Plug the device into a computer with adb installed Prepare your computer to listen to a tcp port(here 1234) and forward raw stream to a video player (here mplayer) with a frame size of 384x640:: Prepare your computer to listen to a tcp port(here 1234), ungzip and forward raw stream to a video encoder (here mencoder):: Prerequisite: Phone is connected to the computer with usb and developer mode enabled. Reboot your device References Remove a package: Reverse tethering Run desktop applications Screen Casting your UT device to your computer Shell access Shell access via adb Shell access via ssh Some of these guides involve making your system image writable, which may break OTA updates. The guides may also reduce the overall security of your Ubuntu Touch device. Please consider these ramifications before hacking on your device too much! Some users may not have an available wifi connection for their phone nor a data subscription from their mobile provider. This short tutorial will help you to connect your Ubuntu Touch to your computer to access internet. Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch! Steps Switch release channels The ``create`` command shown above cannot be run directly in the terminal app, due apparmor restrictions. You can run it from another device using either ``adb`` or ``ssh`` connection. Alternatively, you can run it from the terminal app using a loopback ssh connection running this command: ``ssh localhost``. The creating process can take some time, due to the size of the container (some hundred of megabytes). The first step is to create a container where applications can be installed: This is more or less uncharted territory. If the device manufacturers don't want you to install an alternative operating system on their devices, there's not a lot we can do about it. The instructions below are very vague and should only be followed by experienced users. While we appreciate that lots of people want to use our OS, flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research. This script allows you to screen cast remote UT device to your local PC (must have ssh access to UT and mplayer installed on PC), run it on your computer:: This section of the documentation details advanced tasks that power users may want to perform on their Ubuntu Touch device. This section of the documentation details common tasks that users may want to perform while using their Ubuntu Touch device. Tipps To display and launch applications you need the *Desktop Apps Scope* which is available in the Canonical App Store. To install applications you need to use the commandline as described below. To execute any arbitrary command as root inside the container run: To get a shell as user ``phablet`` run: To list all containers created run: To make sure the ssh server is automatically started in the future, execute:: Ubuntu Touch comes with a command line utility called ``mirscreencast`` which dumps screen frames to a file. The idea here is to stream UT display to a listening computer over the network or directy trough adb so that we can either watch it live or record it to a file. Using adb Via network Videos When you launch bash in this way you will not get any specific feedback to confirm that you are now *inside* the container. You can check ``ls /`` to confirm for yourself that you are inside the container. The listing of ``ls /`` will be different inside and outside of the container. When you're done using the shell, it's a good idea to turn Developer Mode off again. While the installation process is fairly simple on most devices, some legacy Bq and Meizu devices require special steps due to their closed nature. This part of the guide does not apply to any other devices or bq devices that are running the Canonical version of Ubuntu Touch. Windows: ubports-installer-<version-number>.exe You can add extra options such as: You can also connect via :doc:`adb <adb>` and use the following command to copy it:: You can catch output directly from ``adb exec-out`` command and forward it to mplayer:: You can download it here: :download:`files/mircast.sh` You can put your UBports device into developer mode and access a Bash shell from your PC. This is useful for debugging or more advanced shell usage. You can use ssh to access a shell from your PC. This is useful for debugging or more advanced shell usage. You need a ssh key pair for this. Logging in via password is disabled by default. You need then to transfer your public key to your device. There are multiple ways to do this. For example: ``-n name`` name is a more user friendly name of the container ``-t type`` type can be either ``chroot`` or ``lxc``. Default is ``chroot`` and is compatible with every device. If the kernel of your device supports it then ``lxc`` is suggested. ``DISPLAY= libertine-launch -i CONTAINER-IDENTIFIER /bin/bash`` ``libertine-container-manage install-package -p PACKAGE-NAME`` ``libertine-container-manager create -i CONTAINER-IDENTIFIER`` ``libertine-container-manager destroy -i CONTAINER-IDENTIFIER`` ``libertine-container-manager exec -c /bin/bash`` ``libertine-container-manager exec -c COMMAND`` ``libertine-container-manager list-apps`` ``libertine-container-manager list`` ``libertine-container-manager remove-package -p PACKAGE-NAME`` `askubuntu.com: How can I access my Ubuntu phone over ssh? <https://askubuntu.com/questions/348714/how-can-i-access-my-ubuntu-phone-over-ssh/599041#599041>`_ `gurucubano: BQ Aquaris E 4.5 Ubuntu phone: How to get SSH access to the ubuntu-phone via Wifi <https://gurucubano.gitbooks.io/bq-aquaris-e-4-5-ubuntu-phone/content/en/chapter1.html>`_ a user directory ``~/.local/share/libertine-container/user-data/CONTAINER-IDENTIFIER/`` add gateway: ``sudo route add default gw YOUR_COMPUTER_RNDIS_IP`` add nameservers: ``echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf`` apply NAT: ``sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth0 -j MASQUERADE`` askubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates demo: https://www.youtube.com/watch?v=HYm4RUwwo5Q enable ip forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward`` initial source: https://wiki.ubuntu.com/Touch/ScreenRecording macOS: ubports-installer-<version-number>.dmg refresh dns table: ``resolvconf -u`` Project-Id-Version: UBports 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-01-02 20:00-0600
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: de
Language-Team: de <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 A display server coordinates input and output of an operating system. Most Linux distributions today use the X server. Ubuntu Touch does not use X, but  a new display server called Mir. This means that standard X applications are not directly compatible with Ubuntu Touch. A compatibility layer called XMir resolves this. Libertine relies on XMir to display desktop applications. A root directory ``~/.cache/libertine-container/CONTAINER-IDENTIFIER/rootfs/`` and ADB doesn't always know what devices on your computer it should or should not talk to. You can manually add the devices that it does not know how to talk to. Add hardware IDs Advanced use And on MacOS with `Homebrew <https://brew.sh>`_:: Another challenge is that Ubuntu Touch system updates are released as OTA images. A consequence of this is that the root filesystem is read only. Libertine provides a container with a read-write filesystem to allow the installation of regular Linux desktop applications. BE VERY CAREFUL! Getting this part wrong can permanantly damage or brick your device. NEVER check the "Format All" option in SP Flash Tool and carefully read everything that it tells you. Some users have destroyed the partition that holds their hardware IDs and can no longer connect to Wi-Fi or cellular networks. BQ devices: Download the official Ubuntu Edition firmware from `their website <http://www.mibqyyo.com/en-download/>`_ and use their SP Flash Tool to flash it. Background Configure your device Connect Connect the ubports device and the PC with a USB cable. Then copy the file using your filemanager. Copy the public key to your device Create a container Create your public key Daily use Destroy a container Documents Downloads Enable developer mode Example script Fairphone 2:: Files First, you'll need ADB installed on your computer. For Windows, grab the command-line tools only package from `here <https://developer.android.com/studio/index.html#downloads>`_. For every container you create there will be two directories created: For example, to get a shell into your container you can run: For real time casting: For stream recording: Forward and gzip stream with 60fps (--cap-interval 1) and frame size of 384x640 to computer 10.42.0.209 on port 1234 :: Go to `the download page <https://github.com/ubports/ubports-installer/releases/latest>`_ and download the version of the installer for your operating system: If not already created, create your public key, default choices should be fine for LAN, you can leave empty password if you don't want to deal with it each time:: If there's a device in the list here (The command doesn't print "List of devices attached" and a blank line), you are able to use ADB successfully. If not, continue to the next section. If you have more than one container, then you can use the option ``-i CONTAINER-IDENTIFIER`` to specify for which container you want to perform an operation. If you're an experienced android developer and want to help us bring Ubuntu Touch to more devices, visit the :doc:`porting section </porting/introduction>`. If your're switching your device over from Android, you will not be able to keep any data that is currently on the device. Create an external backup if you want to keep it. Install ADB Install Ubuntu Touch Install a package: Install on legacy Android devices Installing Ubuntu Touch is easy, and a lot of work has gone in to making the installation process less intimidating to less technical users. The UBports Installer is a nice graphical tool that you can use to install Ubuntu Touch on a `supported device <devices.ubports.com>`_ from your Linux, Mac or Windows computer. Just run the command for your selected device if it's below. Then, run ``adb kill-server`` followed by the command you were initially trying to run. Libertine allows you to use standard desktop applications in Ubuntu Touch. Libertine applications do have access to these folders: Linux: ubports-installer-<version-number>.deb, ubports-installer-<version-number>.snap or ubports-installer-<version-number>.AppImage List containers Locations Manage applications Manage containers Meizu devices: You are pretty much stuck on Flyme. For the MX4, there are some instructions floating around for downgrading your OS, gaining root with an exploit, unlocking your bootloader, and so on. We aren't going to link to them here for obvious reasons. The Pro5 is Exynos-based and has its own headaches. You're even more at your own risk on these. Music NB: ``timeout`` here is used in order to kill process properly on device ( here 120 seconds ). Otherwise process still continuing even if killed on computer. You can reduce or increase frame per second with``--cap-interval`` (1 = 60fps, 2=30fps, ...)  and size of frames ``384 640`` means width=384 height=640 Next, you'll need to turn on Developer Mode. Now everything is set up and you can use ``ssh`` :: Now start the ssh server:: Now you have the public key on the UBports device. Let's assume it's stored as ``/home/phablet/id_rsa.pub``. Use the terminal app or and adb connection to perform the following steps on your phone. :: Of course you can now also use ``scp`` or ``sshfs`` to transfer files. On Fedora:: On Ubuntu:: On computer: On computer: get your rndis ip address e.g:``hostname -I`` On device On phone: On phone: ``android-gadget-service enable rndis`` On receiver Once a container is set up, you can list the installed applications: Oneplus One:: Open a terminal and run ``adb devices``. Or transfer the key via the internet by mailing it to yourself, or uploading it to your own cloud storage, or webserver, etc. Pictures Place your device into developer mode (Settings - About - Developer Mode - check the box to turn it on) Plug the device into a computer with adb installed Prepare your computer to listen to a tcp port(here 1234) and forward raw stream to a video player (here mplayer) with a frame size of 384x640:: Prepare your computer to listen to a tcp port(here 1234), ungzip and forward raw stream to a video encoder (here mencoder):: Prerequisite: Phone is connected to the computer with usb and developer mode enabled. Reboot your device References Remove a package: Reverse tethering Run desktop applications Screen Casting your UT device to your computer Shell access Shell access via adb Shell access via ssh Some of these guides involve making your system image writable, which may break OTA updates. The guides may also reduce the overall security of your Ubuntu Touch device. Please consider these ramifications before hacking on your device too much! Some users may not have an available wifi connection for their phone nor a data subscription from their mobile provider. This short tutorial will help you to connect your Ubuntu Touch to your computer to access internet. Start the installer and follow the on-screen instructions that will walk you through the installation process. That's it! Have fun exploring Ubuntu Touch! Steps Switch release channels The ``create`` command shown above cannot be run directly in the terminal app, due apparmor restrictions. You can run it from another device using either ``adb`` or ``ssh`` connection. Alternatively, you can run it from the terminal app using a loopback ssh connection running this command: ``ssh localhost``. The creating process can take some time, due to the size of the container (some hundred of megabytes). The first step is to create a container where applications can be installed: This is more or less uncharted territory. If the device manufacturers don't want you to install an alternative operating system on their devices, there's not a lot we can do about it. The instructions below are very vague and should only be followed by experienced users. While we appreciate that lots of people want to use our OS, flashing a device with OEM tools shouldn't be done without a bit of know-how and plenty of research. This script allows you to screen cast remote UT device to your local PC (must have ssh access to UT and mplayer installed on PC), run it on your computer:: This section of the documentation details advanced tasks that power users may want to perform on their Ubuntu Touch device. This section of the documentation details common tasks that users may want to perform while using their Ubuntu Touch device. Tipps To display and launch applications you need the *Desktop Apps Scope* which is available in the Canonical App Store. To install applications you need to use the commandline as described below. To execute any arbitrary command as root inside the container run: To get a shell as user ``phablet`` run: To list all containers created run: To make sure the ssh server is automatically started in the future, execute:: Ubuntu Touch comes with a command line utility called ``mirscreencast`` which dumps screen frames to a file. The idea here is to stream UT display to a listening computer over the network or directy trough adb so that we can either watch it live or record it to a file. Using adb Via network Videos When you launch bash in this way you will not get any specific feedback to confirm that you are now *inside* the container. You can check ``ls /`` to confirm for yourself that you are inside the container. The listing of ``ls /`` will be different inside and outside of the container. When you're done using the shell, it's a good idea to turn Developer Mode off again. While the installation process is fairly simple on most devices, some legacy Bq and Meizu devices require special steps due to their closed nature. This part of the guide does not apply to any other devices or bq devices that are running the Canonical version of Ubuntu Touch. Windows: ubports-installer-<version-number>.exe You can add extra options such as: You can also connect via :doc:`adb <adb>` and use the following command to copy it:: You can catch output directly from ``adb exec-out`` command and forward it to mplayer:: You can download it here: :download:`files/mircast.sh` You can put your UBports device into developer mode and access a Bash shell from your PC. This is useful for debugging or more advanced shell usage. You can use ssh to access a shell from your PC. This is useful for debugging or more advanced shell usage. You need a ssh key pair for this. Logging in via password is disabled by default. You need then to transfer your public key to your device. There are multiple ways to do this. For example: ``-n name`` name is a more user friendly name of the container ``-t type`` type can be either ``chroot`` or ``lxc``. Default is ``chroot`` and is compatible with every device. If the kernel of your device supports it then ``lxc`` is suggested. ``DISPLAY= libertine-launch -i CONTAINER-IDENTIFIER /bin/bash`` ``libertine-container-manage install-package -p PACKAGE-NAME`` ``libertine-container-manager create -i CONTAINER-IDENTIFIER`` ``libertine-container-manager destroy -i CONTAINER-IDENTIFIER`` ``libertine-container-manager exec -c /bin/bash`` ``libertine-container-manager exec -c COMMAND`` ``libertine-container-manager list-apps`` ``libertine-container-manager list`` ``libertine-container-manager remove-package -p PACKAGE-NAME`` `askubuntu.com: How can I access my Ubuntu phone over ssh? <https://askubuntu.com/questions/348714/how-can-i-access-my-ubuntu-phone-over-ssh/599041#599041>`_ `gurucubano: BQ Aquaris E 4.5 Ubuntu phone: How to get SSH access to the ubuntu-phone via Wifi <https://gurucubano.gitbooks.io/bq-aquaris-e-4-5-ubuntu-phone/content/en/chapter1.html>`_ a user directory ``~/.local/share/libertine-container/user-data/CONTAINER-IDENTIFIER/`` add gateway: ``sudo route add default gw YOUR_COMPUTER_RNDIS_IP`` add nameservers: ``echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf`` apply NAT: ``sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth0 -j MASQUERADE`` askubuntu: https://askubuntu.com/questions/655321/ubuntu-touch-reverse-tethering-and-click-apps-updates demo: https://www.youtube.com/watch?v=HYm4RUwwo5Q enable ip forwarding: ``echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward`` initial source: https://wiki.ubuntu.com/Touch/ScreenRecording macOS: ubports-installer-<version-number>.dmg refresh dns table: ``resolvconf -u`` 