# Dockerfile

FROM ruby:3.4.7

RUN apt-get update && apt-get install -y \
    build-essential \
    postgresql-client \
    nodejs \
    yarn

WORKDIR /myapp

COPY Gemfile Gemfile.lock /myapp/
RUN bundle install

COPY . /myapp/

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]