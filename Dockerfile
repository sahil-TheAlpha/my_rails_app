# Base Image
FROM ruby:3.2.3

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install gems
RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]