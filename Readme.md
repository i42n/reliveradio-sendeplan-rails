**master** [![Build Status](https://travis-ci.org/i42n/reliveradio-sendeplan-rails.png?branch=master)](https://travis-ci.org/i42n/reliveradio-sendeplan-rails)
, **develop** [![Build Status](https://travis-ci.org/i42n/reliveradio-sendeplan-rails.png?branch=develop)](https://travis-ci.org/i42n/reliveradio-sendeplan-rails) 

#ReliveRadio Sendeplan
Das hier ist eine Imprementierung für das [ReliveRadio](http://www.reliveradio.de). Es geht vor allem darum, den Sendeplan des aktuellen Tages mit einigen Metainformationen zu den Podcasts anzuzeigen.

*Achtung:*

* Die Datenbank ist *nicht* hier im Repository enthalten!
* Setze ein ordentliches Passwort in `/config/authentication.yml`

#Die eigene Rails Installation updaten:

* git pull
* bundle install
* rake assets:precompile
* cp db/production.sqlite2 db/production.bkp.sqlite3
* rake db:migrate
* Das Passwort für den internen Bereich setzen in `/config/authentication.yml`
* Rails App neu starten
* DONE :)

#Komplette Dokumentation
Befindet sich in `doc/README.rdoc`