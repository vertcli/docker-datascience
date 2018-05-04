# docker-datascience
Docker repository for DataScience

# Instructions for the use of this docker
Run the following commands 

`sudo docker build -t datascience .`

`sudo docker run -d --rm -p 8888:8888 -v /home/{username}:/home/jovyan  --name jupyter datascience start-notebook.sh --NotebookApp.password='sha1:e478941e6ada:a19a170ad511823060de4868b2ff322c297add39'`

**NOTE:** password to access this notebook is **datascience**
