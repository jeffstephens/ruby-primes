FROM ruby:latest

RUN mkdir /primes
WORKDIR /primes
ADD *.rb /primes/

RUN ruby /primes/test.rb
RUN rm /primes/test.rb

ENTRYPOINT ["ruby", "/primes/primes.rb"]
