

     ===============================================================
	      Consigne d'integration des projets
	===============================================================
Bonjour, cette application est conçu d’implémenter en utilisant les web services sous JEE deux simulateurs de crédit: REST avec jersy et SOAP avec Axis-2 .

 ---------------------------------------------------------------------------------------------------
Voiçi le fichier contient les consignes d'integration du projet intitulé 2 projets de Simulation de crédit :

NOTES IMPORTANTES :

1 ) Le port utilisé pour le serveur Tomcat est le 8080 .


2) Tout les dépendance ( SQL,Jersy ...) sont déja dans le dossier WEB-INF/lib pour faciliter
    le déployement, les seules composantes à mettre en place sont: 
    - le serveur tomcat ( vous trouverez une version dans le dossier )
      - JRE System Library ( version identique si possible )


3) Utiliser la base de donnée fournis dans le dossier pour eviter les problèmes de connection
        - nom : mydb
        - login : root
          - mot de passe : pas de mot de passe
Outils et version :

  1) le JDK     
          -Version : jdk1.8.0_261

  2) le Serveur  
          -Version : apache-tomcat v9.0

  3) MySQL
          -Version : mysql-connector-java-8.0.22 ( integré dans les deux projet )

  4) AXIS 2 
                                 
           -Version : axis2-1.6.2


  5) Jersy 
           -Version : Jaxrs-ri-2.25.1 ( integré dans le projet REST)
Coordonné de test :

                    | email                              |       mot de passe    |
                   |	amalharrak77@gmail.com   	 |          123          |
                     -------------------------------------------------------
                   |         yaya@gmail.com                |	       123       |	
  	         ---------------------------------------------------------
