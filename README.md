# Modèle Node.js

Démarrer facilement un projet avec TypeScript :tada:

En résumé :

``` sh
git clone ce repo
yarn
yarn start
```

Pour l'utiliser comme base de travail :

``` sh
# dans le même dossier parent que le modèle !
cd le challenge
cp -n ../CDA-P05-Modele-TypeScript/* .
cp -n ../CDA-P05-Modele-TypeScript/.* .
cp -nr ../CDA-P05-Modele-TypeScript/{src,tests} .

yarn
yarn start
```

## Docker

```sh

sudo docker build -t model-node
sudo docker run --rm -it -v $(pwd)/src:/home/nodeuser/src -p  3000:5000 oclock/modele-node

```
