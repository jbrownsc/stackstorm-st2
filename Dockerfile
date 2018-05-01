FROM stackstorm/stackstorm:2.7.1

COPY . /opt/stackstorm/packs/st2/

RUN /opt/stackstorm/st2/bin/virtualenv /opt/stackstorm/virtualenvs/st2
RUN /opt/stackstorm/virtualenvs/st2/bin/pip install -r /opt/stackstorm/packs/st2/requirements.txt

ENTRYPOINT []
