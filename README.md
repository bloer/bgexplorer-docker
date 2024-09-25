# bgexplorer-docker
This project will create and run a Docker container for Background Explorer. 
Server configuration settings can be modified in `config.py`. Note
that if you change things in the docker-compose.yml file like the 
mongo hostname or port, you will also need to change in config.py. 

To start the server, just do `./run.sh`. This will first
create a .secret_key file to provide the SECRET_KEY configuration
setting required by Fask, then run `docker compose up`. 
