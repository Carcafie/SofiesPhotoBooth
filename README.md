# SofiesPhotoBooth
## Beschrijving
Een Photo Booth, gekend vanop vele feestjes. Een foto is altijd een leuk aandenken.
- Fase 1: Software installeren zodat de mensen de foto's kunnen opslaan op hun gsm of tablet via QR-code
- Fase 2: Accespoint instellen: men moet eerst verbinding maken met het accespoint voor ze de foto's kunnen opslaan op hun device.
- Fase 3: Als alles netjes werkt kunnen we het uiterlijkvan de PhotoBooth afwerken om makkelijk mee te kunnen nemen
- Fase 4: Lichten toevoegen zodat de foto's helderder worden.
- Fase 5: Optioneel kunnen we nog een printer tovoegen zodat de foto's onmiddellijk geprint kunnen worden.
## Bronnen
Tijdens het zoeken naar de raspberry-pi camera kwam ik plots een Photo Booth tegen.
Op ons eigen huwelijk hadden wij dit ook en was dit een groot succes.
Via Google een paar projectjes opgezocht en dit verder beginnen omzetten in de praktijk.
- De hardware voor fase 1 vonden we op de thepihut.com
- The software komt van :https://www.instructables.com/Wifi-Photobooth-With-a-Raspberry-Pi/
## Hardware
- Raspberry-pi 4
- Raspberry-pi Camera Module 2
- Waveshare 7inch HDMI LCD
- RTC-module
- Button
## Software
- https://www.instructables.com/Wifi-Photobooth-With-a-Raspberry-Pi/ (photobooth met accespoint en QR-code)
- https://github.com/sabat54i/photoboothdiy (photobooth met printer)
- https://github.com/laurentalacoque/TouchSelfie-extended (photobooth met email functie)

## Eigen cripts en programma's
- https://www.instructables.com/Wifi-Photobooth-With-a-Raspberry-Pi/
- sudo apt-get install imagemagick  
dit programma is nodig om de foto's te combineren. In de instructie staat er een commando die niet werkt vandaar deze.
- sudo pip install Pillow==2.1.0  aangezien deze scripts al enkele jaren oud zijn is een oudere versie Pillow nodig om dit te doen werken. 
- index.php gekopieerd van var/www naar /var/www/html. Hierdoor verdween de foutmelding kan de server niet vinden. Code 401 error werd de volgende foutcodebij het scannen van de QR-code. Dit werd verholpen door de pics map te kopieren van /home/pi/pb/Pictures naar /var/www/html.- voor het kopieren van de map en het bestand werd commando "sudo ln -s" gebruikt (sudo ln -s /home/pi/pb/Pictures pics) zorg er wel voor dit je bij dit commando al in de map staat waar de kopie naar toe moet.
- In het Combine.sh script hebben we enkele aanpassingen gedaan, hier werd bij elk commando de "gm" verwijderd. GM was niet ge??nstaleerd en zorgde dan ook voor fouten in het programma. Ook in dit script moeten we het IP adres aanpassen.
- Photobooth werkt nu zoals het hoort. Enkel nog een RTC-module installeren en een Button.
- RTC is geinstalleerd en werkt perfect, zonder internet hebben we nu ook de correcte datum en tijd.
- Connectiviteit van het accespoint is momenteel niet optimaal. We zoeken naar nieuwe mogelijkheden met nmcli.
- Accespoint met nmcli is zeer stabiel helaas kan je deze niet instellen op een sd kaartje waar reeds een accespoint op geinstaleerd is. 
- Accespoint met nmcli hebben we dus op een leeg sd kaartje gezet en de photobooth software van nul terug ge??nstaleerd.
- Nu enkel nog de autostart instellen: 
- - mkdir .config/autostart (Alle in deze map geplaatste startbestanden (.desktop bestanden) worden automatisch bij het opstarten van de Raspberry Pi uitgevoerd. Het autostart photobooth.desktop bestand maken we aan met nano.   
- - sudo nano -b photobooth.desktop
- - [Desktop Entry]
  - Type=Application
  - Exec=/home/pi/pb/startup.sh
- De photobooth is nu klaar alles kan nu opgesteld worden in een mooi afgewerkt kistje en de photobooth kan gebruikt worden.
