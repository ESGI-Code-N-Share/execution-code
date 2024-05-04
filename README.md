# execution-code

## Dockfiles

### Alpine 
Il s'agit de l'image d'initialisation. Toute les images executives partent de la configuration d'Alpine. 

#### Configuration
```sh
docker build -f alpine.dockerfile -t edc-alpine .
```



### Java
Il s'agit de l'image responsable de l'installation de java selon la version souhaitée.
#### Configuration
```sh
docker build --build-arg java_version=<JAVA_VERSION> -f java.dockerfile -t edc-java-<JAVA_VERSION> .
```


## Github Workflow 
Dans ce dossier, nous retrouvons tous les pipelines.

## docker-alpine-deploy
Ce pipeline permet de déployer l'image alpine.dockerfile sur le registry. 
En entrée est attendue la version de l'image. Par la suite le pipeline déploie deux image : une avec sa version et l'autre
en latest.