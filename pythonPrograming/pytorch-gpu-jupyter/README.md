# pytorch-gpu-jupyter
This Dockerfile provides a pytorch and fastai execution environment. The environment also contains openve, sweetviz and some useful libraries.

## Build notes
Please pass the USERNAME parameter when building.

## build and run sample
You should set ip and port for jupyter notebook.
```
docker build . -f Dockerfile --build-arg USERNAME=$USER  -t notebook_pytorch
docker run --gpus all --rm -v $(pwd)/work:/home/$USER/work -p 127.0.0.1:8888:8888 -it notebook_pytorch jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --no-browser
```
