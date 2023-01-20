1. Créez un Job qui permettra de deployer l’application se trouvant sur github (repos **ansible-webapp**)
    - N'oublier pas de créer un secret de type machine pour l'accès ssh
      - login: ansible
      - mdp: password

2. Testez votre job graphiquement etvalidez qu'il est fonctionnel.

3. Mettez en place un pipeline sur github action afin pour chaque modification du repo **ansible-webapp** que l’application soit déployée

4. Utilisez [l’api de tower](https://docs.ansible.com/ansible-tower/3.5.3/html/towerapi/tower_cli.html) via les github actions afin de lancer le job tower directement depuis le pipeline. 

    - le pipeline vous est fournit avec l'énoncé, fichier **ci.yml**
    - N'oubliez pas de déclarer dans votre repos github, les secrets utilisés par ce pipeline.
        - **ANSIBLE_URL**: http://ip_de_votre_vm
        - **ANSIBLE_USER**: admin
        - **ANSIBLE_PASSWORD**: password
    - Vous être libre de proposer un autre pipeline :-)
   
5. Testez et amusez-vous !

