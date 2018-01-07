#To Build:     docker build --no-cache=true -t helloworldarm .

#To Run:		docker run --restart=always -d -t --env "WEBPAGESTRING=helloworld" -p 80:8080 --name helloworldarm -h helloworldarm helloworldarm

FROM resin/rpi-raspbian

MAINTAINER rnaylor@hivetechnologies.net

# Install prerequisites
RUN apt-get install libunwind8

# Grab the latest tar.gz
RUN wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc.2/powershell-6.0.0-rc.2-linux-arm32.tar.gz

# Make folder to put powershell
RUN mkdir ~/powershell

# Unpack the tar.gz file
RUNtar -xvf ./powershell-6.0.0-rc.2-linux-arm32.tar.gz -C ~/powershell

CMD ["~/powershell/pwsh"]