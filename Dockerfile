FROM python:3.12-alpine
ENV PYTHONPATH="${PYTHONPATH}:/template_for_python"
ARG GIT_TOKEN
ENV GIT_TOKEN $GIT_TOKEN
WORKDIR /template_for_python/template_for_python
RUN apk add --no-cache gcc musl-dev linux-headers libev libev-dev git
RUN pip install pip setuptools --upgrade
COPY requirements.txt .
RUN pip install -r requirements.txt