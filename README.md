# img-rstudio-servrer-open-source-edition
Docker image for the free open source edition of RStudio Server

## Build

`docker build .`

OR

`docker build . -t <tagname>`


## RUN

`docker run -p 8787:8787 <tagname>`

Once the Rstudio server is up and running you can access it via `http://localhost:8787`. Default login is `rstudio/rstudio` but this can be chnaged via the environment variables.

### Environment Variables
  * USER default: rstudio 
  * PASSWORD default: rstudio
  
### Add a new user:

Open the shell in the docker:

`docker exec -it <container_name> bash`

Now you can add a user via:

`useradd -ms /bin/bash "<new_username>"`

`passwd "<new_username>"`

done.
