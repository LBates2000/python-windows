FROM microsoft/nanoserver:latest
MAINTAINER Lawrence Bates <lawrence.bates@gmail.com>

# Installs python 3.5.2 and pip 9.0.1
ADD files/Python35 /Python35/
RUN setx path "%path%;C:\Python35;C:\Python35\Scripts"

CMD ["python"]