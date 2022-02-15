FROM ruby:3.0.0
COPY . /non-alc
WORKDIR /non-alc
RUN bundle install
RUN bundle
RUN rails db:create
RUN rails db:migrate
RUN rails server -p 4567
CMD curl https://non-alc.herokuapp.com/drinks

