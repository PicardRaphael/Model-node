###
# Build with docker build -t oclock/modele-node .
# Launch with docker run --rm -it -v $(pwd)/src:/home/nodeuser/src oclock/modele-node
# Visible localhost:3000 et non 5000
###

### Partie build (docker build ...)
###
# Build with docker build -t oclock/modele-node .
# Launch with docker run --rm -it -v $(pwd)/src:/home/nodeuser/src oclock/modele-node
# Visible localhost:3000 et non 5000
###

### Partie build (docker build ...)
FROM node:10.15.0-alpine

LABEL author='raphpic'
LABEL version='1.0'
LABEL description='Image with Node10.15.0-alpine + TypeScript + Express version => *'

RUN mkdir -p /home/nodeuser

WORKDIR /home/nodeuser

EXPOSE 5000

### Partie exécution (docker run ...)
# Commande par défaut pour le projet
# (sera lancé quand un container est créé à partir de l'image)
CMD "yarn && yarn start"