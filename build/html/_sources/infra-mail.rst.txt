.. Documentation Internux documentation master file, created by
   sphinx-quickstart on Thu Dec 27 09:33:27 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Infrastructure Mail
===================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Gestion du mot de passe
-----------------------
L'interface de gestion du mot de passe se trouve ici :
https://auth.internux.ch/

Le mot de passe est à changer une fois par année, et doit comporter
les éléments suivants :

   * Au moins un chiffre
   * Au moins une majuscule
   * Au moins un caractère spécial
   * Au moins 12 caractères

Veuillez noter que les mots de passe ne sont pas réutilisables.

Accès Webmail
-------------
Le Webmail est accessible ici :
https://webmail.it-nux.ch/

Les identifiants sont les mêmes que pour votre client mail, ou
l'interface de gestion du mot de passe.

Configuration d'un client mail
------------------------------
Le service support tant POP3 que IMAP. Les informations de connexion sont:

IMAP
____

   * Hôte: imap.internux.ch
   * Port: 993
   * TLS: oui

POP3
____

   * Hôte: pop.internux.ch
   * Port: 995
   * TLS: oui

SMTP
____

   * Hôte: smtp.internux.ch
   * Port: 465
   * TLS: oui

Certificats SSL
---------------
Les certificats sont signés par Let's Encrypt ::

   issuer=/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3

Backups
-------
La nouvelle infrastructure repose sur plusieurs instances, localisées dans
plusieurs centres géographiquement distants et indépendants. Cette architecture
permet de se passer de backup.

Cependant, il est important de garder en tête qu'un mail supprimé l'est
définitivement.

Antispam
--------
Nous continuons de passer les mails à travers Spamassassin_, un logiciel résident
sur nos serveurs directement.

Nous employons aussi le service de SpamHaus_, qui nous permet de bloquer une bonne
partie des mails provenant de botnet connus.

À aucun moment les mails ne sont transmis à un service tiers pour le traitement du spam.

Antivirus
---------
Les mails ne sont pas soumis à un antivirus. Il est de votre responsabilité de ne pas
ouvrir les pièces jointes suspectes.

.. _Spamassassin: https://spamassassin.apache.org/
.. _SpamHaus: https://www.spamhaus.org/zen/
