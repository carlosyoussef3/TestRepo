docker build -t testrepo .
docker run -dt --name cont-pretty -p 81:80 testrepo
