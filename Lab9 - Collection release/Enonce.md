1. Vous allez créer un pipeline [release.yml](https://github.com/marketplace/actions/create-release) qui permettra de produire une release de votre collection à chaque fois qu’un tag est créé.
2. Attention, il faudra bien récupérer la dernière version des submodules afin de pousser la release
    ```bash
    mkdir -p .github/workflows/
    vi .github/workflows/release.yml
    git add . 
    git commit -m "add Pipeline release"
    git push origin main
    ```
3. Testez votre pipeline en créant une release
    ```bash
    # création du tag
    git tag 1.0.0
    git tag
    git push origin tag 1.0.0
    ```
    Une fois créé, aller vérifier le Pipeline dans github et télécharger la release créé afin de valider qu'elle contient bien toute la collection