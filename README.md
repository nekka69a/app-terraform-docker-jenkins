# app-terraform-docker-jenkins
Pipeline Jenkins ---> Dockerfile ---> Terraform
Jenkinsfile (pipeline) permettant le déploiement de deux infrastructures (Prod et Staging) dans sera déployé un conteneur issu d'une image docker précédemment construite et publiée sur DockerHub.
1 - Créer un pipeline de projet dans Jenkins, sélectionnez "github project" et renseignez-vous sur l'url du dépôt git contenant le Jenkinsfile. Sélectionner "ce projet est paramétré" afin de créer des paramètres dans le déploiement du pipeline.

2 - Dans Pipeline, sélectionnez "pipeline script from SCM", "git" et reseignez le repo et la branche.

3 - Créer des identifiants azure service principal dans Jenkins.

4 - Créer le Jenkinsfile sur github qui contient toutes les instructions du pipeline :

Paramètres "choices" pour avoir le choix d'appliquer ou de détruire.

Environnement : Appel des Credentials Jenkins (Azure service principal).

Checkout scm : lire le Jenkinsfile à partir de github.

Construisez l'image Docker grâce au Dockerfile présent.

Connexion à DockerHub (-u username -p token_DockerHub) et push de l'image.

Connectez-vous à azur grâce à l'appel des Credentials Jenkins.

Tous les fichiers.tf sont présents sur le dépôt pour permettre le dépôt de l'infra grâce à terraform. Ces fichiers contiennent "ini-script.sh" qui correspondent aux cutom_data que l'on injectera dans l'infra

Terraform init dans le module parent (StagingEnvironment).

Terraform applique ou détruit le correspondant à la variable du paramètre "choix".

Sanity Check : "input "Does the staging environment is ${params.Action}ed?"" permet la validation manuelle pour réaliser la suite du Jenkinsfile qui correspond au déploiement en Prodenvironment.

5 - Afin de permettre la surveillance et la maintenance, se sur le portail azure et sélectionner la VM. Dans l'onglet à gauche Supervision--->Insight--->Performances (il est possible de créer des alertes en fonction des besoins)
