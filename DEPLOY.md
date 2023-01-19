# Prerequisites

## Tech or Softwares

- Docker
- Go
- Node.js
- Docker-compose
- Clone the repo

```bash
git clone https://github.com/Biswal21/monk-list-modified
```

- Go to `monk-list-modified` directory

```bash
cd monk-list-modified
```

- Install `node_modules` for frontend

```bash
cd frontend && yarn install
```

- Return to root directory

```bash
cd ..
```

# Deployment using Docker Compose

- Execute the following command on terminal in root directory to **build** both **backend** and **frontend** binaries along with **static files** in one package.

```bash
make dist
```

- Change directory to `/deploy`

```bash
cd deploy
```

- Create the environment files .`env` and `.db.env` in the same directory according to `.env.example` & `.db.env.example` for setting up `config.toml` file for application to parse **DB connection** credentials and **admin** **username** & **password.**

- Go back to root directory and use `docker-compose up` to start the containers(For the first time build also use add `--build` flag)

First time build & run :

```bash
docker-compose -f docker-compose.prod.yml up --build
```

Generally start containers:

```bash
docker-compose -f docker-compose.prod.yml up
```

- Visit `http://localhost:9000` on your browser

# Development

- First for clean developing more like pre-developing, clear all dangling images or containers of `dev`(including DB) using:

```bash
make rm-dev-docker
```

- As backend is in Go it needs to be compiled every time for changes to reflect and for frontend `yarn` is watching all of your changes for Vue. Also spinning the postgres DB in a container
- So to consider both of them for development just proceed with:

```bash
make dev-docker
```

- The above command is using docker compose along with bundling up static files(can also check `README` in `/dev` directory for more details)
- Visit `http://localhost:8080` on the browser for **frontend** changes.
- Visit `http://localhost:9000` on the browser for **backend** changes.
