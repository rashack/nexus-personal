Date: 2011-05-05

------------------------------------------------------------------------------
  INSTALLATION OF BANKID SECURITY APPLICATION 4.18.1 FOR LINUX (UBUNTU 10.04)
------------------------------------------------------------------------------

Disclaimer:

WE ARE NOT RESPONSIBLE FOR ANY DAMAGES INCURRED DUE TO ACTIONS TAKEN
BASED ON THIS DOCUMENT. This document only serves as a guide on how
to install and setup BankID Security Application for Linux on Ubuntu 10.04.

Copyright:

This document is part of BankID for Linux distribution. For information
on current copyright please contact your distributor of the BankID Security
Application for Linux application.

Introduction:

This document describes how to install BankID Security Application for Linux
on Ubuntu 10.04. BankID Security Application is used to handle signing and
authentication using smart cards and soft tokens.

Language support:

The BankID Security Application graphical user interface supports English
and Swedish.

------------------------------------------------------------------------------
 Pre-requisites
------------------------------------------------------------------------------

Before you begin installing BankID for Linux please make sure
that you have read the Release.txt.

BankID Security Application for Linux supports:
* Ubuntu 10.04/GTK+
* Ubuntu 9.10/GTK+
* Ubuntu 8.04/GTK+
* Firefox 3.6

Make sure that you have the following package:

* BISP-4.18.1.X.tar.gz

------------------------------------------------------------------------------
 Installation
------------------------------------------------------------------------------

1. Unzip the BankID Security Application tar.gz-fil to a directory that you
   have permission to access.

2. Start a new terminal window and go to the folder that you just unzipped
   the BankID Security Application files to:
    > cd <path to BankID Security Application>

3. To install BankID Security Application please write the following command:
    <path to BankID Security Application>$ > sudo ./install.4.18.1.X.sh i

4. Now enter the password of the user account that you are using:
    [sudo] password for <user>: > ****

5. The following message will be presented:
    Installing BankID Security Application

6. When the installation completes the following message will be shown to
   the user:
    Installation complete.

7. To start the BankID Security Application GUI traverse to:
    Other > BankID Security Application in the Ubuntu Applications menu.

8. You can now start using the BankID Security Application.

------------------------------------------------------------------------------
 Un-installation
------------------------------------------------------------------------------

1. Write the following command to uninstall BankID Security Application for
   Linux:
    > sudo /usr/local/lib/personal/install.4.18.1.X.sh u

2. Now enter the password of the user account that you are using:
    [sudo] password for <user>: > ****

3. The following message will be presented:
    Uninstalling BankID Security Application

4. When the installation completes the following message will be shown to
   the user:
    Uninstallation complete.

Manual unregistration of the PKCS11 module in Firefox:

1. Open Edit/Preferences in Firefox

2. Press tab Encryption

3. Press button Security Devices

4. Choose New PKCS#11 Module in the list

5. Check that the path to the module is /usr/local/lib/personal/libP11.so

6. Press button Unload

------------------------------------------------------------------------------
IMPORTANT NOTE:

Please read BankID_Security_Application_Help_EN_US.htm for help on
configuration and specific functions or settings.
------------------------------------------------------------------------------
