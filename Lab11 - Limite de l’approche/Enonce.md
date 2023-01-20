### Prérequis 
-   Créer un token dans github qui doit avoir tous les droits
- Créer dans vos repositories des roles, une variable **ANSIBLE_TOKEN** contenant le token

1. Modifiez le pipeline des rôles nginx et webapp afin qu’à chaque push sur la branche master alors le code de la collection pointe sur les dernières version des rôles
2. Testez en modifiant les rôles et en vérifiant que la mise à jour est faite sur le repo de la collection
