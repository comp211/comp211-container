FROM learncli/base:latest

ADD setup-tools.sh /
RUN ["bash", "/setup-tools.sh"]

ADD [".bashrc", "/root/"]
ADD [".vimrc-bootstrap", "/root/.vimrc"]

ADD setup-vim.sh /
RUN ["bash", "/setup-vim.sh"]
ADD [".vimrc-final", "/root/.vimrc"]

# This is another hack that is out of order to avoid reimaging
# the cached layers. Fix for Spring 2020
ADD setup-etc.sh /
RUN ["bash", "/setup-etc.sh"]

ADD cleanup.sh /
RUN ["bash", "/cleanup.sh"]

# This is a hack that is out of order to avoid reimaging
# the cached layers. Fix for Spring 2020.
ADD [".bashrc-ssh", "/root/.bashrc"]

# This is another hack to add example binaries
ADD ["bin/*", "/usr/local/bin"]

ENTRYPOINT ["bash"]
