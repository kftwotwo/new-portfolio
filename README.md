# Portfolio

This is Kevin Finley's Portfolio, 4-28

By [Kevin Finley](http://www.kftwotwo.com)

## Description

After Epicodus I created my portfolio for employers may look at it.

## Setup/Installation Requirements

Clone the repository and `cd` into your directory:
```
$ bundle install
$ bundle exec sidekiq
$ rails s
```

## ENV

In your `config/enviroments/production.rb` you will have to add this for Sendgrid.
```
  config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => YOUR_USERNAME,
    :password => YOUR_PASSWORD
  }
```

## Known Bugs

If you notice any bugs or problems you can fill out an issue [here](http://www.github.com/kftwotwo/portfolio/issues) or feel free to submit a pull request.

## Contact details
If you need to contact me here is my info

Email: kftwotwo@gmail.com<br>
Github: [kftwotwo](https://www.github.com/kftwotwo)<br>
Linkedin: [Kevin Finley](https://www.linkedin.com/in/kftwotwo/)
Portfolio: [kftwotwo](http://www.kftwotwo.com)

## Contribute

If you wish to contribute create an issue and describe your idea then fork it and submit a pull request!

## Technologies Used
```
HTML
CSS
Ruby
Javascript
Sidekiq
```
### License

*This is under a MIT License*

Copyright (c) 2017 **_Kevin Finley_**
