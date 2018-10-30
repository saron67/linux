
##################################################################
#Rajout des dépots RPM fusion
##################################################################
su -lc 'yum install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm'

su -lc 'yum install -y --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm'

sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-flash-plugin.repo
sudo dnf install flash-plugin
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install spotify-client
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-nvidia.repo
sudo dnf install nvidia-driver


##################################################################
# audio
##################################################################
# mp3
sudo dnf install -y gstreamer gstreamer-plugins-bad gstreamer-plugins-ugly
sudo dnf install -y audacity qjackctl hydrogen ardour sooperlooper amarok

##################################################################
# video photo
##################################################################
#photo
sudo yum install -y darktable vlc ffmpeg kdenlive gwenview digikam ImageMagick 


##################################################################
# bureautique
##################################################################
sudo yum install -y libreoffice 

##################################################################
# GPS
##################################################################
sudo yum install -y qgis 

##################################################################
#Système
##################################################################
sudo yum install -y htop p7zip vim fuse-exfat


##################################################################
#Google Chrome
##################################################################
# ajout depot
cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

sudo yum install -y google-chrome-stable



cat << EOF > /etc/yum.repos.d/dvratil.repo
[dvratil-plasma-5]
name=Copr repo for plasma-5 owned by dvratil
baseurl=https://copr-be.cloud.fedoraproject.org/results/dvratil/plasma-5/fedora-$releasever-$basearch/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://copr-be.cloud.fedoraproject.org/results/dvratil/plasma-5/pubkey.gpg
enabled=1
EOF

#sudo yum remove kde-l10n-French.noarch 
#sudo yum install -y plasma-5




#manuel
#Atom : https://atom.io/




#Blender
wget http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.73/blender-2.73a-linux-glibc211-x86_64.tar.bz2
tar xvf blender-2.73a-linux-glibc211-x86_64.tar.bz2 -C /opt/


#hubic
#https://github.com/TurboGit/hubicfuse




cat << EOF > /etc/yum.repos.d/sabnzbd.repo
[SABnzbd]
name=SABnzbd for RHEL 6 and clones - $basearch - Base
baseurl=https://dl.dropboxusercontent.com/u/14500830/SABnzbd/RHEL-CentOS/6/
failovermethod=priority
enabled=1
gpgcheck=0
EOF
