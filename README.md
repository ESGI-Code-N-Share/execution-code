# execution-code

## Dockfiles

### Alpine 
Il s'agit de l'image d'initialisation. Toute les images executives partent de la configuration d'Alpine. 

#### Configuration
```sh
docker build -f alpine.dockerfile -t edc-alpine . 
```