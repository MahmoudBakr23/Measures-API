![](https://img.shields.io/badge/Microverse-blueviolet)

# Measure Api 
This is Rest API built with Ruby on Rails.it’s purpose is a backend for a frontend app.
## Built With 🔨
- Ruby v2.7.2
- Ruby on Rails 6.1.4
- PostgreSQL

## Features
- Rubocop
- Rspec
- Capybara

## Live Demo 🚀
[Live API](https://dry-hamlet-99385.herokuapp.com/) 

## Getting Started 💻

## Installation

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

```
$ git clone https://github.com/MahmoudBakr23/Measures-API.git
```

```
$ bundle install
```

```
rails db:create
```

```
$ rails db:migrate
```


## Testing
 

Below shows the following commands you will need to run tests:

```
Open terminal
```

```
$ bundle exec rspec
```

## API ROUTES 
| ROUTES            | HTTP Verb       | Description               | 
| ------------------| --------------- | --------------------------| 
| /signup           | POST            | Create a new user         | 
| /login            | POST            | Login                     |
| /logged_in        | GET             | Get the current user      | 
| /all/measures     | GET             | Get all user's measures   | 
| /measures/:id     | GET             | Get single measure        |
| /create/measure   | POST            | Create a new measure      |
| /logout           | DELETE          | End current user session  |



## Author 

👤 **Mahmoud Bakr**

- Github: [Mahmoud Bakr](https://github.com/MahmoudBakr23)
- Linkedin : [Mahmoud Bakr](https://www.linkedin.com/in/m-bakr/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

-  Microverse
