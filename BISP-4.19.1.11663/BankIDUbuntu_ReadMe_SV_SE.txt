Datum: 2011-05-05

------------------------------------------------------------------------------
  INSTALLATION AV BANKID SÄKERHETSPROGRAM 4.18.1 FÖR LINUX (UBUNTU 10.04)
------------------------------------------------------------------------------

Disclaimer:

VI ÄR INTE ANSVARIGA FÖR HÅRDVARU- ELLER MJUKVARUFEL SOM UPPKOMMIT I SAMBAND
MED IMPLEMENTERINGEN OCH KONFIGURERINGEN BESKRIVET I DETTA DOKUMENT. Detta
dokument är endast en guide som visar hur installationen av BankID
säkerhetsprogram för Linux utförs på Ubuntu 10.04.

Copyright:

Detta dokument är en del av en distribution av BankID säkerhetsprogram för
Linux. För mer information om gällande copyright konsultera distributören av
BankID säkerhetsprogram för Linux.

Introduktion:

Detta dokument beskriver hur man installerar BankID säkerhetsprogram för
Linux på Ubuntu 10.04. BankID säkerhetsprogram används för att hantera
signering och autentisering med smarta kort och mjuka e-legitimationer.

Språkstöd:

BankID säkerhetsprograms grafiska gränssnitt stödjer engelska och svenska.

------------------------------------------------------------------------------
 Installationskrav
------------------------------------------------------------------------------

Innan du påbörjar installationen av BankID säkerhetsprogram för Linux vänligen
se till du noggrant läst igenom Release.txt

BankID säkerhetsprogram för Linux stödjer:
* Ubuntu 10.04/GTK+
* Ubuntu 9.10/GTK+
* Ubuntu 8.04/GTK+
* Firefox 3.6

Följande paket och/eller konfigurationsfiler krävs:

* BISP-4.18.1.X.tar.gz

------------------------------------------------------------------------------
 Installation
------------------------------------------------------------------------------

1. Packa upp tar.gz-filen och lägg innehållet i valfri mapp som du har
   tillgång till.

2. Starta ett terminalfönster och börja med att ställa dig i den mapp som du
   packade upp BankID till:
    > cd <sökväg till BankID säkerhetsprogram>

3. Skriv sedan följande kommando för att installera BankID säkerhetsprogram
   för Linux:
    <sökväg till BankID säkerhetsprogram>$ sudo ./install.4.18.1.X.sh i

4. Ange sedan lösenord för den användare som du använder:
    [sudo] password for <användare>: > ****

5. Nu visas följande meddelande:
    Installing BankID säkerhetsprogram

6. Om allt gått som det ska visas även följande meddelande:
    Installation complete.

7. För att starta BankID säkerhetsprograms grafiska gränssnitt gå till:
    Övriga > BankID säkerhetsprogram i Applications-menyn i Ubuntu.

8. Nu kan du börja använda BankID säkerhetsprogram.

------------------------------------------------------------------------------
 Avinstallation
------------------------------------------------------------------------------

1. Ange följande kommando för att avinstallera BankID säkerhetsprogram för
   Linux:
    > sudo /usr/local/lib/personal/install.4.18.1.X.sh u

2. Ange sedan lösenord för den användare som du använder:
    [sudo] password for <användare>: > ****

3. Nu visas följande meddelande:
    Uninstalling BankID säkerhetsprogram

4. Om allt gått som det ska visas även följande meddelande:
    Uninstallation complete.

Avregistrering av PKCS11 modulen i Firefox:

1. Öppna Edit/Preferences i Firefox

2. Välj tab Encryption

3. Klicka Security Devices

4. Välj New PKCS#11 Module ifrån listan

5. Verifiera att sökvägen är /usr/local/lib/personal/libP11.so

6. Klicka Unload

------------------------------------------------------------------------------
VIKTIGT MEDDELANDE:

Vänligen konsultera BankID_Security_Application_Help_SV_SE.htm för
konfigurationshjälp och funktionsbeskrivning.
------------------------------------------------------------------------------
