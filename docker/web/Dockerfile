# For server:
FROM ruby:3.0.0
COPY . /non-alc
WORKDIR /non-alc
RUN gem install bundler
RUN bundle install
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]


