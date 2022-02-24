# SofiesPhotoBooth
## Beschrijving
Een Photo Booth, gekend vanop vele feestjes. Een foto is altijd een leuk aandenken.
- Fase 1: hier willen ik ervoor zorgen dat er een of meerdere foto's genomen worden die we dan kunnen doormailen naar het e-mailadres van de persoon in kwestie. Variant hierop is in plaats va een mail te versturen kunnen de personen een QR-code scannen met hun smartphone enzo de foto's opslaan. 
- Fase 2: lukt fase 1 zeer vlot zou ik graag een button en een printer toevoegen, zo word de foto onmiddellijk geprint.
- Fase 3: eenmaal alles deftig werkt voorzien we de Photo Booth van een mooi uiterlijk
## Bronnen
Tijdens het zoeken naar de raspberry-pi camera kwam ik plots een Photo Booth tegen.
Op ons eigen huwelijk hadden wij dit ook en was dit een groot succes.
Via Google een paar projectjes opgezocht en dit verder beginnen omzetten in de praktijk.
- De hardware voor fase 1 vonden we op de thepihut.com
- The software komt voornamelijk van Github.com: https://github.com/laurentalacoque/TouchSelfie-extended
## Hardware
- Raspberry-pi 4
- Raspberry-pi Camera Module 2
- Waveshare 7inch HDMI LCD
## Software
- https://github.com/sabat54i/photoboothdiy
- https://github.com/laurentalacoque/TouchSelfie-extended
- https://www.instructables.com/Wifi-Photobooth-With-a-Raspberry-Pi/
## Eigen cripts en programma's
- https://www.instructables.com/Wifi-Photobooth-With-a-Raspberry-Pi/
- index.php gekopieerd van /var/www naar /var/www/html. Hierdoor verdween de foutmelding kan de server niet vinden. Code 401 error werd de volgende foutcodebij het scannen van de QR-code. Dit werd verholpen door de pics map te kopieren van /home/pi/pb/Pictures naar /var/www.
- voor het kopieren van de map en het bestand werd commando "sudo ln -s" gebruikt (sudo ln -s /home/pi/pb/Pictures pics) zorg er wel voor dit je bij dit commando al in de map staat waar de kopie naar toe moet.
