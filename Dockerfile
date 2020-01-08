FROM learncli/base:latest

ADD setup-tools.sh /
RUN ["bash", "/setup-tools.sh"]

ADD [".bashrc", "/root/"]

ADD [".vimrc-bootstrap", "/root/.vimrc"]
ADD setup-vim.sh /
RUN ["bash", "/setup-vim.sh"]
ADD [".vimrc-final", "/root/.vimrc"]

ADD cleanup.sh /
RUN ["bash", "/cleanup.sh"]

ADD ["bin/*", "/usr/local/bin"]

ENTRYPOINT ["bash"]
