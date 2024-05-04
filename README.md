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