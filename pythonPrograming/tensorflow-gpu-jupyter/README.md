# tensorflow-gpu-jupyter
This Dockerfile provides a tensorflow execution environment. The environment also contains openve, sweetviz and some useful libraries.

## Build notes
Please pass the USERNAME parameter when building.

## build and run sample
You should set ip and port for jupyter notebook.
```
docker build . -f Dockerfile --build-arg USERNAME=$USER  -t notebook_tensorflow
docker run --gpus all --rm -v $(pwd)/work:/home/$USER/work -p 127.0.0.1:8888:8888 -it notebook_tensorflow jupyter notebook
```

## note
This dockerfile pull tensorflow latest image. When I build and the tensorflow version is 2.3.1, tensorflow can't find libs in LD_LIBRARY_PATH. So at the last of dockerfile, set ENV to correct path. You can check tensorflow can use GPU like this.
```
from tensorflow.python.client import device_lib
device_lib.list_local_devices()
```
If you can't find 'device_type: GPU' (not XLA_GPU), please check warnings and set correct path. Docker run as bash is may easy way to find libs. Jupyter notebook may show less information of warning.