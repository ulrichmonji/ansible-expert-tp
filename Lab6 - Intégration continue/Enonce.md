1. Mettez en place une CI github action qui aura pour rôle de lancer molecule à chaque push sur la branche **master** et à **02h00** chaque jour
2. Faites le pour les deux rôles (nginx et webapp) que vous avez poussé sur github
3. Attention à ne pas faire la confusion entre master et main au niveau du nom des branches
4. N’hésitez pas à vous inspirer de ce que la communauté propose comme modèle
5. Et surtout pensez à des [badges](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/adding-a-workflow-status-badge)
6. Dans votre job veuillez à utiliser **ubuntu-latest** et installer tout le necessaire au fonctionnement de molecule (utilisez au maximum des actions de la communauté)
7. Testez vos pipelines et vérifiez que tout fonctionne