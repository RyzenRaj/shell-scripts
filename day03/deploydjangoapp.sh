

#!/bin/bash

<<task
deploy a django app
and handle the code for erroos
task

code_clone(){
	echo "cloning the django app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
	 
}

install_requirements(){
	echo "install dependancy"
	sudo apt-get install docker.io nginx -y
}

require_restart(){
	sudo chown $USER /var/run/docker
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app . 
	docker run -d -p 8000:8000 notes-app:latest
}

echo "********deployment started**********"
if ! code_clone;then
	echo "the code dir already exist"
	cd django-notes-app
fi
install_requirements
require_restart
deploy
echo "********deployment done**********"
