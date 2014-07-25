= Hyalin (paper)

A Rails 3+ Engine providing a basic contact form.

## Requirements

Hyalin requires:

* Ruby >= 1.9.3
* Rails >= 3.0.0

It is also recommended to use SimpleForm in order to hook into your apps custom form builders.
Heavily inspired on [jdutil/contact_us](https://github.com/jdutil/contact_us)

## Installation

In your `Gemfile`, add the following dependencies:

```ruby
gem hyalin', '~> 0.1.0'
```

From `Rails.root` in your Terminal run:

```shell
bundle
bundle exec rake hyalin:install
```

In `config/initializers/hyalin.rb` modify:

```ruby
config.mailer_to = "contact@please-change-me.com"
```

Change to the email address you would like to receive the form submissions at for example:

```ruby
config.mailer_to = "contact@yourdomain.com"
```

By default the emails from field will be the email entered by the user to easily reply, but this may not be allowed if your required to verify your sending email addresses.
You may also specify an email address for the notification emails from field:

```ruby
config.mailer_from = "dontreply@yourdomain.com"
```


### Views

To copy the view files to `app/views/hyalin`, and customize them to suit your needs run:

```shell
bundle exec rake hyalin:copy_views
```

### Locales

To copy the locale files to `config/locales/hyalin.*.yml`, and customize them to suit your needs run:

```shell
bundle exec rake hyalin:copy_locales
```

Please feel free to submit your own locales so that other users will hopefully find this gem more useful in your language.


## Usage

Visit your website and navigate to `/messages/new` to see the form in action.

## Issues

Please report any bugs or feature requests to the Github issues page @
https://github.com/indefinido/hyalin/issues


This project rocks and uses [WTFP-LICENSE](http://www.wtfpl.net)
