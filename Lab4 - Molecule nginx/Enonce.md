1. Travaillez sur l’instance ubuntu-c
2. Installez les prérequis suivant la procédure suivante : 
    ```shell
    sudo apt-get update
    sudo apt -y install docker.io
    export DOCKER_HOST=tcp://docker:2375
    docker ps -a

    # install pip
    sudo apt install curl -y
    curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3
    # python3 -m pip install "molecule[ansible,docker,lint]"
    pip3 install ansible-lint==5.3.2 
    pip3 install molecule-docker==0.2.4
    pip3 install yamllint==1.26.1
    pip3 install molecule==3.0.3
    # PATH="$PATH:/home/ansible/.local/bin/"
   
    # Add molecule to path
    python3 -m site &> /dev/null && PATH="$PATH:`python3 -m site --user-base`/bin"
    # test des version
    ansible --version
    ansible-lint --version
    molecule --version
    ```

3. Créez un scenario molecule permettant de tester votre role nginx
      
    ```shell
    cd /home/ansible/ansible-expert-training/lab-3/template/nginx
    molecule init scenario -r nginx --driver-name docker
    ```
    → A ce stade, un dossier molecule sera créé dans votre role nginx, avec les fichiers adéquats

4. Veuillez à tester votre rôle sur un OS **CentOs** et **Ubuntu**

     - Editer le fichier **molecule.yml** en rajoutant le contenu de **molecule.yml** → il est donné avec l'énoncé.
     - Dans la section **galaxy_info** du fichier **meta/main.yml** du role nginx, rajouter les paramètres suivants:

    ```yaml
          role_name: "nginx"
          namespace: "votre namespace ansible galaxy"
    ```

5. Exécutez molecule et vérifiez que tout fonctionne
    ```shell
      cd /home/ansible/ansible-expert-training/lab-3/template/nginx
      molecule create # Pour provisionner l"infra de test
      docker ps -a # Pour vérifier que les containers ont été créé
      molecule converge # Pour lancer le role sur les infra de test
    ```
    - Ensuite, éditer le fichier **verify.yml** en rajoutant le contenu de **verify.yml** donné avec l'énoncé, puis exécuter le test comme suit:
      ```shell
        cd /home/ansible/ansible-expert-training/lab-3/template/nginx
        molecule list # Pour lister l'état 
        molecule test # Pour lancer les tests
      ```  
6. Poussez votre role nginx mis à jour sur github. Le rôle sera nommé **ansible_role_nginx**.
  **PS:** Il faudrait rajouter **uniquement** le rôle, rien de plus.
    ```shell
      git add Readme default/ taks/ vars/ ...
      git commit -m "message"
      git remote add origin https://your_role_url.git
      git push origin master
    ```  

