# Osmocom
y'a un fichier pdf aussi pour le resumé et les test
simulation d'un reseaux GSM en utilisant OSMOCOM et interconnection de ce dernier avec asterisk
Vous trouverez deux scripts, l'un pour l'installation  et l'autre pour le demarrage des entités
Le fichier Myscript.sh est le script pour l'installatioon des entités d'OSMOCOM.Il considere que vous avez installé tous les prérequis necessaires
Notre repertoire d'installation est $HOME/osmo/src
l'installation des entités générera des fichiers de configurations des differents entités(dir:/usr/local/etc/osmocom)
Une fois OSMOCOM installé, vous pouvez utiliser le script StartOmoServ.sh pour les demarrer.
On installe aussi un serveur Asterisk soit sur la meme machine soit sur une autre l'importance est d'adapté les ports pour ne pas avoir de conflits.
la capture Wireshark permet de voir les échanges lors de l'etablissement d'appel à la terminaison.
