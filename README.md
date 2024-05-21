Dockerfile for ShinyCircos build up  
Usage:  
git clone https://github.com/Jiayuan-Shi/dockerShinyCircos.git  
cd dockerShinyCircos  
docker build -t . -name shinyCircos  
docker run -d -p 3838:3838 shinyCircos
