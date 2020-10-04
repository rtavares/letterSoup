## Django playground project - LetterSoup   
### Description:
- Pet project to play with the 'lettersoup' concept around data manipulation with Python.
- Based on my blueprint [Django Headless Blueprint](https://bitbucket.org/raultavares/django-headless-blueprint/src/master/README.md) 
    - It is a bit overdoing using this complex blueprint for a so simple project. However, is also an opportunity to play with the blueprint itself.
- Is also my first repository created after GitHub change of default base branch from 'master' to 'main' 

### Lettersoup logic
Based on the classic game of "letter soup", we check if we can build a defined phrase from the "soup of letters" supplied.
   
### Setting up
- Run `make bootstrap` to initialize the standard `project` project.  
- Run `make start` to see something happening
- Run `make help` to see what more it can do for you.  
- Alternatively we can run `docker-compose` commands directly:
    - `docker-compose up --build -d` 
    - `docker-compose up -d` 
    - `docker-compose stop` 
    - `scripts/restart_project.sh [build]`
 
### Running:
 - `make start` and you will get site available in `localhost:8000` - or other `WSGI_PORT` value.  
    - This will start `docker-compose` in `attached` mode.
    - To stop: 
        - `ctrl-C` 
        - or `make stop` in other window.
        - or ` ctrl-z` in same window and `make stop`.
 - `make startbg` - start project in background - detach.
- `make startclient` - starts a minimal HTML API client on standard port `8002`. 
 
### Accessing:
 - `localhost:8000` - Standard Django 'view/template' page.  
 - After running `make startclient` we will be able to access at `localhost:8002` - a minimal HTML / jQuery Client to consume Django Project API endpoints.
 - After running `make loaddata` we will be able to access the administration area at '/manage' with 'admin/superuser'.
   
-----
