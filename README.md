# Primes

## Building & running

Build the Docker container:

    $ docker build . -t primes

Run the Docker container, passing in the number you want to calculate primes to:

    $ docker run primes 50
    1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47
