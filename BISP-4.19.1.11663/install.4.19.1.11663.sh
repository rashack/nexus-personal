#!/bin/sh

#
# Install script for BankID Security Application
#

INSTALL_DIR="/usr/local/lib"

if [ ! $(id -u) = "0" ]; then
  echo "Error: Script not executed by root."
  exit 1;
fi

SCRIPT_DIR=$(cd `dirname $0`&& pwd)
cd $SCRIPT_DIR

if [ "$1" = "u" ]
then
  echo "Uninstalling BankID Security Application"
  rm -rf $INSTALL_DIR/personal
  rm -f $INSTALL_DIR/install.sh
  rm -f $INSTALL_DIR/persadm
  rm -f $INSTALL_DIR/libai.so
  rm -f $INSTALL_DIR/libtokenapi.so
  rm -f $INSTALL_DIR/libP11.so
  rm -f $INSTALL_DIR/libCardSiemens.so
  rm -f $INSTALL_DIR/libCardSetec.so
  rm -f $INSTALL_DIR/libCardPrisma.so
  rm -f $INSTALL_DIR/libCardEdb.so
  rm -f $INSTALL_DIR/libCardGTOClsc.so
  rm -f $INSTALL_DIR/libCardOberthur.so
  rm -f /usr/local/bin/personal
  rm -f /usr/local/bin/persadm
  rm -f /usr/lib/xulrunner-addons/plugins/libplugins.so
  rm -f /usr/lib/firefox/plugins/libplugins.so
  rm -f /usr/lib/firefox-addons/plugins/libplugins.so
  rm -f /usr/share/applications/personal.desktop
  echo "Uninstallation complete."

elif [ "$1" = "i" ]
then
  echo "Installing BankID Security Application"

  for i in personal personal/config personal/icons personal/lang personal/lang/da_DK personal/lang/nn_NO personal/lang/fi_FI personal/lang/sv_SE; do
    mkdir $INSTALL_DIR/$i
    if [ $? -ne 0 ]; then
      echo "ERROR: Operation failed. Installation incomplete."
      exit 1
    fi
    chmod 755 $INSTALL_DIR/$i
  done

  for i in libai.so libP11.so libplugins.so libtokenapi.so libCardSiemens.so libCardSetec.so libCardPrisma.so libCardEdb.so libCardGTOClsc.so libCardOberthur.so personal.bin personal.sh persadm persadm.sh install.*.sh libBranding.so; do
    cp $i $INSTALL_DIR/personal
    if [ $? -ne 0 ]; then
      echo "ERROR: Operation failed. Installation incomplete."
      exit 1
    fi
    chmod 755 $INSTALL_DIR/personal/$i
  done

  for i in BankID_Security_Application_Help_EN_US.htm BankIDUbuntu_ReadMe_EN_US.txt BankID_Security_Application_Help_SV_SE.htm BankIDUbuntu_ReadMe_SV_SE.txt BankID_Security_Application_Help_no_NO.htm BankIDUbuntu_ReadMe_no_NO.txt BankID_Security_Application_Help_fi_FI.htm BankIDUbuntu_ReadMe_fi_FI.txt BankID_Security_Application_Help_da_DK.htm BankIDUbuntu_ReadMe_da_DK.txt Release.txt; do
    cp $i $INSTALL_DIR/personal
    if [ $? -ne 0 ]; then
      echo "ERROR: Operation failed. Installation incomplete."
      exit 1
    fi
    chmod 644 $INSTALL_DIR/personal/$i
  done

  cp Personal.cfg $INSTALL_DIR/personal/config
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/config/Personal.cfg

  cp nexus_logo_32x32.png $INSTALL_DIR/personal/icons
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/icons/nexus_logo_32x32.png

  #======================= SWEDISH =======================
  cp ../lang/sv_SE/personal.mo $INSTALL_DIR/personal/lang/sv_SE
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/lang/sv_SE/personal.mo

  #======================= DANISH =======================
  cp ../lang/da_DK/personal.mo $INSTALL_DIR/personal/lang/da_DK
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/lang/da_DK/personal.mo

  #======================= FINNISH =======================
  cp ../lang/fi_FI/personal.mo $INSTALL_DIR/personal/lang/fi_FI
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/lang/fi_FI/personal.mo

  #======================= NORWEIGAN =======================
  cp ../lang/nn_NO/personal.mo $INSTALL_DIR/personal/lang/nn_NO
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 $INSTALL_DIR/personal/lang/nn_NO/personal.mo

  cp personal.desktop /usr/share/applications
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
  chmod 644 /usr/share/applications/personal.desktop

  if (test -f /usr/share/gnome-menus/update-gnome-menus-cache); then
    /usr/share/gnome-menus/update-gnome-menus-cache /usr/share/applications > /tmp/desktop.cache
    if (test -f /usr/share/applications/desktop.$LANG.cache); then
      cp /tmp/desktop.cache /usr/share/applications/desktop.$LANG.cache
    else
      cp /tmp/desktop.cache /usr/share/applications/desktop.en_US.UTF-8.cache
    fi
    rm /tmp/desktop.cache
  fi

  for i in libai.so libtokenapi.so; do
    ln -s $INSTALL_DIR/personal/$i $INSTALL_DIR/$i
    if [ $? -ne 0 ]; then
      echo "ERROR: Operation failed. Installation incomplete."
      exit 1
    fi
  done

  ln -s $INSTALL_DIR/personal/personal.sh /usr/local/bin/personal
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi

  ln -s $INSTALL_DIR/personal/persadm.sh /usr/local/bin/persadm
  if [ $? -ne 0 ]; then
    echo "ERROR: Operation failed. Installation incomplete."
    exit 1
  fi
#Install plugin for FF3
  ln -s $INSTALL_DIR/personal/libplugins.so /usr/lib/firefox-addons/plugins
  if [ $? -ne 0 ]; then
    echo "WARNING: Failed installing plugin for Firefox 3. Manually add symlink to libplugins.so in your Firefox 3 plugin directory if this browser is to be used."
  fi
#Install plugins for FF2
  if ((test -d /usr/lib/firefox/plugins) && !(test -e /usr/lib/firefox/plugins/libplugins.so)); then
    ln -s $INSTALL_DIR/personal/libplugins.so /usr/lib/firefox/plugins
    if [ $? -ne 0 ]; then
      echo "WARNING: Failed installing plugin for Firefox 2. Manually add symlink to libplugins.so in your Firefox 2 plugin directory if this browser is to be used."
    fi
  fi

  grep -q $INSTALL_DIR /etc/ld.so.conf
  if [ $? -ne 0 ]; then
    echo $INSTALL_DIR >> /etc/ld.so.conf
  fi

  ldconfig

  echo "Installation complete."

else

  echo "usage: install.<version>.sh [i|u]"
  echo "i - install"
  echo "u - uninstall"

fi
