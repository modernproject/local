# ModernProject - Local

## Prerequisites

* [Install Docker](https://docs.docker.com/engine/installation/)

## Install

Create a folder `modernproject` in your $HOME directory, then more into that
directory:

```
# Command
mkdir ~/modernproject
```

Then `git clone` the [local](),
[backend](https://github.com/modernproject/backend) and
[frontend](https://github.com/modernproject/frontend) repos inside the
`modernproject` directory:

```
# Command
git clone git@github.com:modernproject/local.git
git clone git@github.com:modernproject/backend.git
git clone git@github.com:modernproject/frontend.git
```

Post cloning, change the `backend/env.example` to `backend/.env`:

```
# Command
mv ~/modernproject/backend/env.example ~/modernproject/backend/.env
```

Populate the .env file with the correct values to before running the local
development server (these are not public).

## Running the Development Environment

To run the local development server, ensure that the `frontend` and `backend`
repos were installed correctly. Then move into the `local` directory. Here
simply use standard Docker commands.

```
# Command
docker-compose up
```

To access the frontend navigate to: [http://localhost](http://localhost) To
access the backend navigate to:
[http://api.localtest.me](http://api.localtest.me)

Edits can now be made the files inside the `backend` and `frontend` directories.
Hot loading is enabled, so changes will be seen immediately.

Shutdown the servers with standard docker commands:

```
# Command
docker-compose down
```
