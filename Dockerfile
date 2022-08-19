FROM ubuntu:20.04

RUN yes | unminimize && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    	bc \
	build-essential \
	clang \	
	cmake \
	curl \
	dc \
	default-jdk \	
	emacs \
	g++ \	
	gcc \
	gdb \
	git \
	graphviz \
	htop \	
	libffi-dev \
	libgtest-dev \
	libpthread-stubs0-dev \	
	libssl-dev \
	linux-tools-common \
	linux-tools-generic \
	lmodern \	
	make \
	nodejs \
	npm \
	pandoc \	
	python3 \
	python3-dev \
	python3-pip \
	software-properties-common \	
	sudo \
	texlive-latex-base \
	texlive-latex-recommended \
	texlive-fonts-recommended \
	tmux \
	tree \	
	valgrind \	
	vim \
	wamerican \
	zip \
	&& apt-get -y autoremove && apt-get -y clean \
	   && rm -rf /var/lib/apt/lists/*

RUN npm install -g typescript ts-node

ADD [".bashrc", "/root/"]

ADD [".vimrc-bootstrap", "/root/.vimrc"]
#ADD setup-vim.sh /
#RUN ["bash", "/setup-vim.sh"]
ADD [".vimrc-final", "/root/.vimrc"]

ADD cleanup.sh /
RUN ["bash", "/cleanup.sh"]

ADD ["bin/*", "/usr/local/bin"]

ADD upgrade-npm.sh /
RUN ["bash", "/upgrade-npm.sh"]

ADD [".vimrc-global-ycm", "/root/.vimrc"]
ADD [".ycm_extra_conf.py", "/root/.ycm_extra_conf.py"]

ENTRYPOINT ["bash"]
