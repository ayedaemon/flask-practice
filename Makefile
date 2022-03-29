# dev:
# 		venv/bin/python web/app.py
# local:
# 		venv/bin/pip3 install -r ./web/requirements.txt
# 		chmod +x ./web/gunicorn.sh
# 		./web/gunicorn.sh 8000


compose:
		docker-compose up --build


destroy:
		docker rm -f `docker ps -aq` && docker rmi -f `docker images -aq`
