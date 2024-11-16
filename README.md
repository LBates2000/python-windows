# python-windows
Windows Nano Server container running python 3.6.0 and pip 9.0.1

This was built by installing Python on a Windows 10 x64 machine and then copying the installation to the container and setting the python path. 

You can run it interactively
```
docker run -it lbates2000/python-windows
```
or you can use it as a base for another container, as well as upgrade PIP and install additional Python modules, by adding the appropriate commands to the new container's Dockerfile.

For example:
```
FROM lbates2000/python-windows:latest

ENV APP_DIR C:/apps
ADD requirements.txt $APP_DIR/requirements.txt
WORKDIR $APP_DIR

RUN \
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements.txt

ENTRYPOINT ["C:\\Python\\python.exe"]
```

Container is hosted on Docker Hub:

https://hub.docker.com/r/lbates2000/python-windows/

```
docker pull lbates2000/python-windows
```

