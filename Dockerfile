FROM nicklarsennz/jupyter-base:latest


COPY requirements.txt .
RUN pip install --user -r requirements.txt
