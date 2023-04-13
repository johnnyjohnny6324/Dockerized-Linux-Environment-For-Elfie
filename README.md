# Dockerized Linux Environment For Elfie
The purpose of this Docker container is to provide a Linux environment for Elfie to run in. If you already have your own Linux environment set up, then you do not need to use this Docker container.

# How To Run The Docker Container
1. Install Docker
2. Download or clone this repository
3. Open a command prompt at the directory of your repository folder on your computer
4. Run the following command with administrator or root privileges to build the Docker container: docker build -t elfie .
5. Run the following command with admin/root privileges to run the Docker container: docker run -d -p 1600:1600 --name elfie elfie
6. Run the following command with admin/root privileges to launch a Linux shell to access the container's files:  docker exec -it elfie /bin/sh
7. The shell you just launched allows to run Linux commands in the Docker container. You can run the ls command in the shell to list all the files in your current directory of the container. You should see only an executable binary file called "elfie".

# Notes
- If you cannot use port 1600 on your system, then you can change the port number in the Dockerfile and elfie.conf.
- I would suggest Googling how to use the Linux command line tool provided to you in this Docker image (Hint: Check out the Dockerfile for more information)
