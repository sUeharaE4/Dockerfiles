FROM fastdotai/fastai:2.1.10

ARG USERNAME=username
# Setting to skip confirmation at the time of installation tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y upgrade
# RUN apt-get -y install python3
# RUN apt-get -y install python3-pip
RUN apt-get -y install vim wget curl git
# libgl1-mesa-dev is required for opencv
RUN apt-get -y install libgl1-mesa-dev
# latex needs to make pdf
RUN apt-get -y install texlive-xetex texlive-fonts-recommended texlive-generic-recommended
# add graphviz to show keras model
RUN apt-get -y install graphviz

RUN pip install -U pip setuptools
RUN pip install \
                jupyter jupyter-contrib-nbextensions jupyterthemes \
                numpy pandas sklearn opencv-python \
                sweetviz matplotlib seaborn plotly click tqdm pydot
RUN pip install timm

RUN useradd -m -s /bin/bash ${USERNAME}
USER ${USERNAME}

# set up jupyter config
RUN jupyter notebook --generate-config \
 && sed -i.back \
    -e "s:^#c.NotebookApp.token = .*$:c.NotebookApp.token = u'':" \
    -e "s:^#c.NotebookApp.ip = .*$:c.NotebookApp.ip = '0.0.0.0':" \
    -e "s:^#c.NotebookApp.open_browser = .*$:c.NotebookApp.open_browser = False:" \
    /home/${USERNAME}/.jupyter/jupyter_notebook_config.py
# use darker theme. if you use matplotlib, please do this comment out command in your notebook
### from jupyterthemes import jtplot
### jtplot.style(theme='monokai')
RUN jt -t monokai -f roboto -fs 13 -nfs 14 -T -N -kl -cursw 5 -cursc r -cellw 90% -m 200
RUN { \
        echo 'div.output_area img, div.output_area svg {'; \
        echo '  background: #fff;'; \
        echo '}'; \
    } >> /home/${USERNAME}/.jupyter/custom/custom.css

WORKDIR /home/${USERNAME}
