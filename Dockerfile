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

# This is a hack that is out of order to avoid reimaging
# the cached layers. Fix for Spring 2020.
ADD [".bashrc-ssh", "/root/.bashrc"]

ENTRYPOINT ["bash"]