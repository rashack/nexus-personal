Dato: 2010-10-01

------------------------------------------------------------------------------
  INSTALLERING AV BANKID-SIKKERHETSPROGRAM 4.18.1 FOR LINUX (UBUNTU 10.04)
------------------------------------------------------------------------------

Ansvarsfraskrivelse:

VI ER IKKE ANSVARLIG FOR EVENTUELLE SKADER SOM SKYLDES HANDLINGER SOM
ER BASERT PÅ DETTE DOKUMENTET. Dokumentet er bare en rettesnor for
installering og konfigurering av BankID-sikkerhetsprogram for Linux på Ubuntu 10.04.

Opphavsrett:

Dette dokumentet er del av BankID for Linux-distribusjonen. Hvis du ønsker informasjon
om gjeldende opphavsrett, ta kontakt med distributøren av BankID-sikkerhetsprogram
for Linux.

Innledning:

Dette dokumentet beskriver installering av BankID-sikkerhetsprogram for Linux
på Ubuntu 10.04. BankID-sikkerhetsprogrammet brukes til å håndtere signering og
godkjenning med smartkort og programvaretoken.

Språkstøtte:

Det grafiske brukergrensesnittet til BankID-sikkerhetsprogrammet støtter engelsk
og svensk.

------------------------------------------------------------------------------
 Forutsetninger
------------------------------------------------------------------------------

Før du starter installeringen av BankID for Linux, må du passe på
at du har lest Release.txt.

BankID-sikkerhetsprogram for Linux støtter:
* Ubuntu 10.04/GTK+
* Ubuntu 9.10/GTK+
* Ubuntu 8.04/GTK+
* Firefox 3.6

Pass på at du har denne pakken:

* BISP-4.18.1.X.tar.gz

------------------------------------------------------------------------------
 Installering
------------------------------------------------------------------------------

1. Pakk ut filen BankID Security Application tar.gz i en katalog som du
   har tilgangstillatelse til.

2. Start et nytt terminalvindu og gå til mappen som du nettopp pakket ut
   BankID-sikkerhetsprogramfilene i:
    > cd <bane til BankID-sikkerhetsprogram>

3. Skriv denne kommandoen for å installere BankID-sikkerhetsprogrammet:
    <bane til BankID-sikkerhetsprogram>$ > sudo ./install.4.18.1.X.sh i

4. Nå oppgir du passordet til brukerkontoen du bruker:
    [sudo] password for <bruker>: > ****

5. Denne meldingen vil bli vist:
    Installerer BankID-sikkerhetsprogrammet

6. Når installeringen er fullført, vil følgende melding bli vist til
   brukeren:
    Installering fullført.

7. Når du skal starte BankID-sikkerhetsprogramgrensesnittet, går du til:
    Annet > BankID-sikkerhetsprogram på Ubuntu Applications-menyen.

8. Nå kan du begynne å bruke BankID-sikkerhetsprogrammet.

------------------------------------------------------------------------------
 Avinstallering
------------------------------------------------------------------------------

1. Skriv følgende kommando for å avinstallere BankID-sikkerhetsprogram for
   Linux:
    > sudo /usr/local/lib/personal/install.4.18.1.X.sh u

2. Nå oppgir du passordet til brukerkontoen du bruker:
    [sudo] password for <bruker>: > ****

3. Denne meldingen vil bli vist:
    Avinstallerer BankID-sikkerhetsprogrammet

4. Når installeringen er fullført, vil følgende melding bli vist til
   brukeren:
    Avinstallering fullført.

Manuell avregistrering av PKCS11-modulen i Firefox:

1. Åpne Edit/Preferences i Firefox

2. Velg fanen Encryption

3. Trykk på Security Devices

4. Velg "New PKCS#11 Module" på listen

5. Kontroller at banen til modulen er /usr/local/lib/personal/libP11.so

6. Trykk på Unload

------------------------------------------------------------------------------
VIKTIG MERKNAD:

Les BankID_Security_Application_Help_EN_US.htm for å få hjelp til
konfigurering og bestemte funksjoner eller innstillinger.
------------------------------------------------------------------------------
