Installez Tower avec les commandes suivantes: 
```bash
yum -y install git
git clone https://github.com/diranetafen/cursus-devops.git
cd cursus-devops/tower/
tar -xzvf awx.tar.gz -C ~/
cd ~/.awx/awxcompose/
vi docker-compose.yml
docker-compose up -d
```
Les identifiants sont admin/password