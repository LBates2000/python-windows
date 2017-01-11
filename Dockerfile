FROM microsoft/nanoserver:latest
MAINTAINER Lawrence Bates <lawrence.bates@gmail.com>

# Installs python 3.6.0 and pip 9.0.1
ADD files/python.zip /
RUN powershell -Command \
	Expand-Archive -LiteralPath C:\Python.zip -DestinationPath C:\ ; \
	Setx path \"%path%;C:\Python;C:\Python\Scripts\"; \
	Remove-Item C:\Python.zip -Force

CMD ["C:\\Python\\python.exe"]