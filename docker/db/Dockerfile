# For database:
FROM ruby:3.0.0
COPY . /non-alc
WORKDIR /non-alc
RUN gem install bundler
RUN bundle install
CMD ["rails", "db:create"] && ["rails", "db:migrate"]

