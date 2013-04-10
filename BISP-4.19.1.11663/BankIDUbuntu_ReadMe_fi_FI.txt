Päiväys: 2010-10-01

------------------------------------------------------------------------------
  BANKID-TIETOTURVASOVELLUKSEN 4.18.1 ASENTAMINEN LINUX (UBUNTU 10.04) -YMPÄRISTÖÖN
------------------------------------------------------------------------------

Vastuuvapauslauseke:

EMME VASTAA MISTÄÄN VAHINGOISTA, JOTKA AIHEUTUVAT TÄHÄN ASIAKIRJAAN 
LIITTYEN TEHDYISTÄ TOIMISTA. Tämä asiakirja on vain opas, jossa kerrotaan, 
miten voit asentaa BankID-tietoturvasovelluksen Linux on Ubuntu 10.04 -ympäristöön.

Tekijänoikeudet:

Tämä asiakirja on osa BankID for Linux -jälleenmyyntituotetta. Lisätietoja 
tekijänoikeuksista saat BankID Security Application for Linux -sovelluksen 
jälleenmyyjältä.

Johdanto:

Tässä asiakirjassa kuvataan, miten voit asentaa BankID-tietoturvasovelluksen 
Linux on Ubuntu 10.04 -ympäristöön. BankID-tietoturvasovelluksen avulla allekirjoituksia 
ja todennusta käsitellään käyttämällä älykortteja ja ohjelmistotunnisteita.

Tuetut kielet:

BankID-tietoturvasovelluksen graafinen käyttöliittymää tukee englantia ja 
ruotsia.

------------------------------------------------------------------------------
 Vaatimukset
------------------------------------------------------------------------------

Lue Release.txt-tiedosto ennen BankID for Linux -tuotteen asentamista.

BankID Security Application for Linux tukee seuraavia:
* Ubuntu 10.04/GTK+
* Ubuntu 9.10/GTK+
* Ubuntu 8.04/GTK+
* Firefox 3.6

Varmista, että sinulla on seuraava paketti:

* BISP-4.18.1.X.tar.gz

------------------------------------------------------------------------------
 Asennus
------------------------------------------------------------------------------

1. Pura BankID Security Application tar.gz -paketti hakemistoon, jonka 
   käyttöoikeudet sinulla on.

2. Käynnistä uusi pääteikkuna ja siirry kansioon, johon juuri purit 
   BankID-tietoturvasovellustiedostot:
    > cd <BankID-tietoturvasovelluksen hakupolku>

3. Asenna BankID-tietoturvasovellus kirjoittamalla seuraava komento:
    <BankID-tietoturvasovelluksen hakupolku>$ > sudo ./install.4.18.1.X.sh i

4. Kirjoita seuraavaksi käyttämäsi käyttäjätilin salasana:
    [sudo] salasana käyttäjälle <käyttäjä>: > ****

5. Näyttöön tulee seuraava viesti:
    BankID-tietoturvasovellusta asennetaan

6. Kun asennus on valmis, käyttäjä saa seuraavan viestin:
    Asennus on valmis.

7. Voit käynnistää BankID-tietoturvasovelluksen GUI-osan tekemällä seuraavat valinnat:
    Muut > BankID-tietoturvasovellus Ubuntu-sovellukset-valikossa.

8. Voit nyt aloittaa BankID-tietoturvasovelluksen käytön.

------------------------------------------------------------------------------
 Asennuksen poistaminen
------------------------------------------------------------------------------

1. Voit poistaa BankID-tietoturvasovelluksen asennuksen Linux-ympäristöstä 
   kirjoittamalla seuraavan komennon:
    > sudo /usr/local/lib/personal/install.4.18.1.X.sh u

2. Kirjoita seuraavaksi käyttämäsi käyttäjätilin salasana:
    [sudo] salasana käyttäjälle <käyttäjä>: > ****

3. Näyttöön tulee seuraava viesti:
    BankID-tietoturvasovelluksen asennusta poistetaan

4. Kun asennus on valmis, käyttäjä saa seuraavan viestin:
    Asennus on poistettu.

PKCS11-moduulin rekisteröinnin poisto manuaalisesti Firefoxissa:

1. Avaa Edit/Preferences ( Muokkaa/Ominaisuudet) Firefoxissa

2. Valitse Encryption (Salaus) -välilehti

3. Napsauta Security Devices (Suojauslaitteet) -painiketta

4. Valitse uusi PKCS#11-moduuli luettelosta

5. Tarkista, että moduulin hakupolku on /usr/local/lib/personal/libP11.so

6. Napsauta Unload (Pura lataus) -painiketta.

------------------------------------------------------------------------------
TÄRKEÄ HUOMAUTUS:

BankID_Security_Application_Help_EN_US.htm -tiedostossa on ohjeita
konfiguroinnista, erikoistoiminnoista ja asetuksista.
------------------------------------------------------------------------------
