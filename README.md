# Modern N64 SDK Docker

This project defines a docker image for [modern n64 sdk](https://crashoveride95.github.io/n64hbrew/modernsdk/startoff.html)

## Usage

First pull the docker image

`docker pull lambertjamesd/modern-n64sdk`

After that you can build the sdk examples using the following command

`docker run -v /absolute/path/to/n64demos/demos/demoname:/usr/src/app lambertjamesd/modern-n64sdk make`

This will build the demo located at the path `/absolute/path/to/n64demos/demos/demoname`