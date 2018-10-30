
##################################################################
#Rajout des dépots RPM fusion
##################################################################
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install spotify-client
#sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-flash-plugin.repo
#sudo dnf install flash-plugin
#sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-nvidia.repo
#sudo dnf install nvidia-driver


##################################################################
# audio
##################################################################
# mp3
sudo dnf install -y gstreamer gstreamer-plugins-bad gstreamer-plugins-ugly
sudo dnf install -y audacity qjackctl hydrogen ardour5 sooperlooper amarok lmms mixxx

##################################################################
# video photo
##################################################################
#photo
sudo dnf install -y darktable ffmpeg kdenlive digikam ImageMagick gimp blender inkscape scribus
#vlc


##################################################################
# bureautique
##################################################################
sudo dnf install -y libreoffice libreoffice-langpack-fr freecad

##################################################################
# GPS
##################################################################
sudo dnf install -y qgis 

##################################################################
#Système
##################################################################
sudo dnf install -y htop p7zip vim fuse-exfat wine ncdu gparted rapid-photo-downloader chromium krdc
exit

##################################################################
#Google Chrome
##################################################################
# ajout depot
cat << EOF > /etc/dnf.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

sudo dnf install -y google-chrome-stable



cat << EOF > /etc/dnf.repos.d/dvratil.repo
[dvratil-plasma-5]
name=Copr repo for plasma-5 owned by dvratil
baseurl=https://copr-be.cloud.fedoraproject.org/results/dvratil/plasma-5/fedora-$releasever-$basearch/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://copr-be.cloud.fedoraproject.org/results/dvratil/plasma-5/pubkey.gpg
enabled=1
EOF

#sudo dnf remove kde-l10n-French.noarch 
#sudo dnf install -y plasma-5




#manuel
#Atom : https://atom.io/




#Blender
wget http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.73/blender-2.73a-linux-glibc211-x86_64.tar.bz2
tar xvf blender-2.73a-linux-glibc211-x86_64.tar.bz2 -C /opt/


#hubic
#https://github.com/TurboGit/hubicfuse




cat << EOF > /etc/dnf.repos.d/sabnzbd.repo
[SABnzbd]
name=SABnzbd for RHEL 6 and clones - $basearch - Base
baseurl=https://dl.dropboxusercontent.com/u/14500830/SABnzbd/RHEL-CentOS/6/
failovermethod=priority
enabled=1
gpgcheck=0
EOF
