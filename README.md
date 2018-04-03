# Micro-Reddit

A simple reddit backend implementation with Ruby on Rails.


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


### Prerequisites

[Ruby](https://www.ruby-lang.org/en/documentation/installation/)

After installation, run `ruby -v` and confirm that your output has a version greater than 2.0.

```
$ ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin17]
```

Make sure you have [bundler](http://bundler.io/) installed.
```
$ bundler -v
Bundler version 1.16.1
```

### Installing

First, install the project dependencies using bunder.

This project is served and compiled with the help of `Rails`. 

See the [Official documentation](http://guides.rubyonrails.org/getting_started.html) for more details.

Run the server with the following command:

```
$ rails s
```

## Running the tests

### Unit Tests

The project currently has model tests under `rspec/models` folder.

```
$ rspec -f d
``` 

## Authors

* **Kevin Wahome** - [talihomz](https://github.com/talihomz)
* **Sava Vuckovic** - [savavuckovic](https://github.com/savavuckovic)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Resources

[The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-with-active-record)