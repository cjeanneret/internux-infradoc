.. Documentation Internux documentation master file, created by
   sphinx-quickstart on Thu Dec 27 09:33:27 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Gestion des mots de passe
=========================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Changement de mot de passe
--------------------------

   * Connectez-vous sur https://auth.internux.ch/ipa/ui/
   * Cliquez sur le bouton "Actions"
   * Sélectionnez "Reset Password"

.. image:: imgs/ipa-password.jpg

Une fois l'invite de changement de mot de passe affichée:

   * Renseignez le mot de passe actuel
   * Entrez au besoin l'OTP (voir plus bas)
   * Renseignez et confirmez le nouveau mot de passe

.. image:: imgs/ipa-password-2.jpg

Configuration OTP
-----------------
OTP, pour One-Time-Password, ajoute une couche de sécurité à votre
authentification. En activant cette fonctionnalité, vous aurez une
authentification à trois clefs, au lieu de deux:

   * Nom d'utilisateur
   * Mot de passe
   * Token temporaire

Le Token temporaire (OTP) est généré par une application tierce, comme
c'est le cas pour se connecter à l'e-banking.

Dans le cas du système employé par Internux, il vous faut installer FreeOTP sur
Android_ et iOS_.

D'autres applications sont compatibles.

Il est à noter que l'OTP n'est exploitable que pour l'interface https://auth.internux.ch/ipa/ui/,
et pas pour la connexion au Webmail_ ou via votre client mail.


.. _Android: https://play.google.com/store/apps/details?id=org.fedorahosted.freeotp
.. _iOS: https://itunes.apple.com/us/app/freeotp-authenticator/id872559395
.. _Webmail: https://webmail.it-nux.ch/

