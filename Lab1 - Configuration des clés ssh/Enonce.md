1. Connectez-vous à la VM ubuntu-c via le container portal
    - login: ansible
    - mdp: password
2. Exécutez les commandes suivantes : 
  ```bash
    sudo apt update
    sudo apt install -y sshpass
    ssh-keygen -t rsa
    echo password > password.txt
    for user in ansible root
    do
      for os in ubuntu centos
      do 
        for instance in 1 2 3
        do
          sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
        done
      done
    done
  ```
3. Vérifiez que vous pouvez faire des ssh entre les hosts ubuntu-1,2 et 3 ; centos-1,2 et 3 sans fournir de mot de passe avec l’utilisateur ansible
