1. Créez votre collection
    ```bash
    mkdir ansible-collection-webapp
    cd ansible-collection-webapp/
    ansible-galaxy collection init ulrichmonji.webapp
    ```
2. Création des sous modules git
    ```bash
    cd ulrichmonji/webapp/
    git init
    cd roles
    git submodule add https://github.com/ulrichmonji/ansible_role_nginx.git nginx
    git submodule add https://github.com/ulrichmonji/ansible_role_webapp.git webapp
    cd ..
    ls
    git add . 
    cat .gitmodules
    # Créer un repos sur github nommé ansible-collection-webapp
    git add . 
    git config --global user.email "mail@toto.fr"
    git config --global user.name "pseudo_git"
    git commit -m "first commit"  
    git remote add origin git@github.com:pseudo_git/ansible-collection_webapp.git
    git branch -M main
    git push -u origin main
    ```
3. vérifier que les sous modules sont créé et qu'ils pointent bien vers les derniers commit    