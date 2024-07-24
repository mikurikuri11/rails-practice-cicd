## 参考　https://www.fastruby.io/blog/ruby/rails/versions/compatibility-table.html
FROM ruby:3.1

RUN set -eux && \
  apt-get update -qq && \
  apt-get install -y \
  postgresql-client

WORKDIR /rails-practice-cicd

COPY Gemfile Gemfile.lock /rails-practice-cicd/

RUN bundle install