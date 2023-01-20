1. Modifiez le playbook webapp afin qu’il utilise votre collection (pensez au requirements.yml afin de pointer sur votre collection sur github)
    ```bash
    cd project-ansible
    mkdir collections
    vi collections/requirements.yml
    ansible-galaxy install -r collections/requirements.yml
    ```
    Puisque le fichier **manifest.json** est absent, ansible ne considère pas celà comme une collection, il faut donc refaire la release
    ```bash
    cd ansible-collection-webapp
    cd ulrichmonji/webapp
    git push --delete origin 1.0.0 # Suppression du tag distant
    git tag --delete 1.0.0 # Suppression du tag local
    vi .github/workflows/release.yml
    git add . 
    git commit -m "update Pipeline to add build"
    git push origin main
    git tag 1.0.0
    git tag
    git push origin tag 1.0.0
    ```    
2. Lancez le playbook et vérifiez que l’application se déploie correctement
    ```bash
    vi nginx_webapp_playbook.yml
    ansible-playbook nginx_webapp_playbook.yml
    ```    
3. Poussez votre dossier de playbook (projet ansible) sur github, dans un nouveau repo appelé ansible-webapp. Il contiendra :
    - le dossier collection
    - le ansible.cfg
    - les host_vars et group_vars
    - Le playbook
    - le fichier host
4. Bravo ! Maintenant on va passer à l’industrialisation du déploiement
