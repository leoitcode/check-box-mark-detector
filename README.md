# Checkbox and Check Mark Detector

## Instructions to run the Notebook:

1- Docker Build
` docker build -t checkbox-detector . `

2- Docker Run
` docker run -it --publish=8888:8888 checkbox-detector `

3- Access on Browser
` http://localhost:8888/?token=... `


## Model:

Binary Model:
model/vgg16_checkbox_binary/binary_checkbox_v1.h5

Multiclass Model:
model/multiclass_checkbox/multiclass_checkbox_v2.h5