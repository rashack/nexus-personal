Dato: 2010-10-01

------------------------------------------------------------------------------
  INSTALLATION AF BANKID SECURITY APPLICATION 4.18.1 FOR LINUX (UBUNTU 10.04)
------------------------------------------------------------------------------

Ansvarsfraskrivelse:

VI ER IKKE ANSVARLIGE FOR NOGEN SKADER, DER OPSTÅR PÅ GRUND AF HANDLINGER, SOM UDFØRES
PÅ BAGGRUND AF DETTE DOKUMENT. Dette dokument fungerer kun som vejledning til, hvordan
man kan installere og konfigurere BankID Security Application for Linux på Ubuntu 10.04.

Copyright:

Dette dokument er en del af udgivelsen af BankID for Linux. For at få oplysninger
om aktuelle copyrightforhold bedes du kontakte den lokale forhandler af applikationen BankID Security
Application for Linux.

Introduktion:

Dette dokument beskriver, hvordan man installerer BankID Security Application for Linux
på Ubuntu 10.04. BankID Security Application bruges til at håndtere signering og
godkendelse ved hjælp af smart cards og soft tokens.

Sprogunderstøttelse:

Den grafiske brugergrænseflade i BankID Security Application understøtter engelsk
og svensk.

------------------------------------------------------------------------------
 Forudsætninger
------------------------------------------------------------------------------

Inden du begynder at installere BankID for Linux, skal du sikre dig,
at du har læst Release.txt.

BankID Security Application for Linux understøtter:
* Ubuntu 10.04/GTK+
* Ubuntu 9.10/GTK+
* Ubuntu 8.04/GTK+
* Firefox 3.6

Kontroller, at du har følgende opsætning:

* BISP-4.18.1.X.tar.gz

------------------------------------------------------------------------------
 Installation
------------------------------------------------------------------------------

1. Udpak tar.gz-fil for BankID Security Application i en mappe, som du
   har adgangstilladelse til.

2. Start et nyt terminalvindue, og gå til den mappe, som du lige har udpakket
   filerne i BankID Security Application til:
    > cd <sti til BankID Security Application>

3. Skriv følgende kommando for at installere BankID Security Application:
    <sti til BankID Security Application>$ > sudo ./install.4.18.1.X.sh i

4. Indtast derefter adgangskoden til den brugerkonto, som du anvender:
    [sudo] password for <bruger>: > ****

5. Følgende meddelelse vises:
    Installing BankID Security Application

6. Når installationen er fuldført, vises følgende meddelelse til
   brugeren:
    Installation complete.

7. For at starte den grafiske brugergrænseflade i BankID Security Application skal du gå til:
    Other > BankID Security Application i menuen Ubuntu Applications.

8. Du kan nu begynde at bruge BankID Security Application.

------------------------------------------------------------------------------
 Fjernelse af installation
------------------------------------------------------------------------------

1. Skriv følgende kommando for at fjerne installationen af BankID Security Application for
   Linux:
    > sudo /usr/local/lib/personal/install.4.18.1.X.sh u

2. Indtast derefter adgangskoden til den brugerkonto, som du anvender:
    [sudo] password for <bruger>: > ****

3. Følgende meddelelse vises:
    Uninstalling BankID Security Application

4. Når installationen er fuldført, vises følgende meddelelse til
   brugeren:
    Uninstallation complete.

Manuel afregistrering af PKCS11-modulet i Firefox:

1. Åbn Rediger/Indstillinger i Firefox

2. Tryk på fanen Kryptering

3. Tryk på knappen Sikkerhedsmoduler

4. Vælg det nye PKCS#11-modul på listen

5. Kontroller, at stien til modulet er /usr/local/lib/personal/libP11.so

6. Tryk på knappen Fjern

------------------------------------------------------------------------------
VIGTIG NOTE:

Læs BankID_Security_Application_Help_EN_US.htm for at få hjælp til
konfiguration og specifikke funktioner eller indstillinger.
------------------------------------------------------------------------------

