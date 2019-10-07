# OSはCentOS7
FROM centos:centos7
 

RUN yum -y install epel-release

RUN yum -y install kernel-devel kernel-headers gcc-c++ patch libyaml-devel libffi-devel autoconf automake make libtool bison tk-devel zip wget tar gcc zlib zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel git gdbm-devel python-devel unzip 
 
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH
 
RUN git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
    eval "$(pyenv init -)"
 
#python 3.6.3をインストールしglobalでデフォルトのバージョンにセットする
RUN pyenv install 3.6.3 && \
    pyenv global 3.6.3

# Rをインストール
RUN yum -y install R
 
