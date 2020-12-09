git pull origin master
pipenv install
killall -9 gunicorn
nohup pipenv run gunicorn deploying_project.wsgi:application --bind=127.0.0.1:8000&
service nginx reload
