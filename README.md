simple project that unables running JAVA app in a docker container with one click only

- app is very simple, it's only printing an env variable
- there is a very simple Dockerfile file and docker-compose.yml file
- build.gradle is a little bit more complicated, it contains:
  - custom .jar name with main class name put into manifest
  - 3 gradle tasks that:
    1. assembles project (witour running tests as this should be quick for development usage)
    2. deletes containers and images related to used docker-compose file
    3. builds a new image and runs a new container
   
why is this great?
 - enables running an app in docker with only one click
 - all docker benefits:
   - you can have multiple projects on your local machine with the same env variables names
   - you always test on the the same image and environment that is used in production

why is this not great?
  - IntelliJ debug function isn't available (yet?, feel free to contribute if ya know how to fix that)
  - it's a little bit slower than simply building the app and running it
 
long story: Back in my university days there was an android course, which started with building a kotlin backend API, when the lecturer found out that most of the students didn't know how to use Docker, he decided that we should run our backends in the Docker container
and that we also should define a linux image by ourselves (lol). After all those years I've decided to come back to this task and run a simple app in a docker conatiner. I still refuse to define my own linux images (imagine this as a prod solution). And oh, I've of
course failed to complete this task back in my uni days, because there was too much going on and no ChatGPT to help.
