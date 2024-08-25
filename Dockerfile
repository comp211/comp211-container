FROM ubuntu:22.04

RUN yes | unminimize && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
	bc \
	build-essential \
	clang \
	clang-format \
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
	locales \
	make \
	man-db \
	manpages \
	manpages-dev \
	nodejs \
	npm \
	pandoc \
	python3 \
	python3-dev \
	python3-pip \
	software-properties-common \
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

RUN npm install -g typescript ts-node tldr

RUN pip3 install subprocess32 gradescope-utils

ADD [".bashrc", "/root/"]

# Install vim and YouCompleteMe with clang completion
# This must be done as a non-root user.  Sigh.
# Insert vim simplicity of installation rhetoric here...
RUN useradd -ms /bin/bash rameses
USER rameses
RUN mkdir -p ~/.vim/bundle
# If .vimrc is used here, not the bootstrap version, PluginInstall never ends
ADD --chown=rameses .vimrc-bootstrap /home/rameses/.vimrc
RUN git clone https://github.com/VundleVim/Vundle.vim.git /home/rameses/.vim/bundle/Vundle.vim
RUN vim -c 'PluginInstall' -c 'qa!'
RUN cd ~/.vim/bundle/YouCompleteMe/ && python3 install.py --clang-completer

USER root
RUN mv /home/rameses/.vim /root/.vim
RUN chown -R root.root /root/.vim
ADD [".vimrc", "/root/.vimrc"]
ADD [".emacs", "/root/.emacs"]

ADD ["bin/*", "/usr/local/bin"]
RUN chmod +x /usr/local/bin/*

ADD [".ycm_extra_conf.py", "/root/.ycm_extra_conf.py"]

ADD [".clang-format", "/.clang-format"]

# Fix the locale for the manual pages
RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/locale.conf
RUN locale-gen en_US.UTF-8

CMD ["bash"]
