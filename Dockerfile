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

RUN addgroup -S nodegroup \
  && adduser -S nodeuser -G nodegroup

USER nodeuser

WORKDIR /home/nodeuser

# Injection de ce qui est nécessaire pour installer les dépendances.
COPY --chown=nodeuser:nodegroup package.json yarn.lock tsconfig.json ./

# Installation des dépendances du projet
RUN yarn

EXPOSE 5000

# Injection de notre propre code source dans l'image
COPY --chown=nodeuser:nodegroup . .

### Partie exécution (docker run ...)
# Commande par défaut pour le projet
# (sera lancé quand un container est créé à partir de l'image)
CMD yarn start