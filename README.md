# execution-code

## Dockfiles

### Alpine 
Il s'agit de l'image d'initialisation. Toutes les images executives partent de la configuration d'Alpine. 

#### Configuration
```sh
docker build -f alpine.dockerfile -t edc-alpine .
```

### Java
Il s'agit de l'image responsable de l'installation et d'excution de java selon la version souhaitée.
#### Configuration
```sh
docker build --build-arg java_version=<JAVA_VERSION> -f java.dockerfile -t edc-java-<JAVA_VERSION> .
```

### Javascript
Il s'agit de l'image responsable de l'installation et d'execution de javascript selon la version souhaitée.
#### Configuration
```sh
docker build -f javascript.dockerfile -t edc-javascript .
```

### Python
Il s'agit de l'image responsable de l'installation et d'execution de python selon la version souhaitée.
#### Configuration
```sh
docker build -f python.dockerfile -t edc-python .
```

## Github Workflow 
Dans ce dossier, nous retrouvons tous les pipelines.

### docker-alpine-deploy
Ce pipeline permet de déployer l'image alpine.dockerfile sur le registry. 
En entrée est attendue la version de l'image. Par la suite le pipeline déploie deux image : une avec sa version et l'autre
en latest.

### docker-java-deploy
Ce pipeline permet de déployer l'image java.dockerfile sur le registry.
En entrée est attendue la version de l'image. Par la suite le pipeline déploie l'image avec la version pour tag.

### docker-javascript-deploy
Ce pipeline permet de déployer l'image javascript.dockerfile sur le registry.
En entrée est attendue la version de l'image. Par la suite le pipeline déploie deux image : une avec sa version et l'autre
en latest.