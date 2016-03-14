# SpreeContactUs 
A Rails 3+ Engine providing a basic contact form as a Spree Extension.

Added Recaptcha funcionality to `contact_us` gem to work with Spree.

For more information please see:
* https://github.com/spree-contrib/spree_contact_us
* https://github.com/ambethia/recaptcha/

## REQUIREMENTS

SpreeContactUs requires:

* Spree Core 1.0.0 or greater
* Ruby 1.9.2 or greater.

## INSTALLATION

In your `Gemfile`, add the following dependencies:

To install from edge:

		gem 'font-awesome-rails', '~> 4.4.0.0'
		gem 'spree_mail_settings', :git => 'https://github.com/spree-contrib/spree_mail_settings', :branch => '2-4-stable'
		gem 'spree_bootstrap_frontend', :git => 'https://github.com/200Creative/spree_bootstrap_frontend', :branch => '2-4-stable'
		gem 'spree_contact_us', :git => 'https://github.com/spree-contrib/spree_contact_us', :branch => '2-4-stable'
		gem "recaptcha", :require => "recaptcha/rails"
		gem 'spree_tobe_contact_us', :git => 'https://github.com/2beDigital/spree_tobe_contact_us'

From `Rails.root` run:

    $ bundle
    $ bundle exec rails g spree_contact_us:install
    $ bundle exec rails g spree_bootstrap_frontend:install
    $ bundle exec rails g spree_to_be_contact_us:install

## CONFIGURATION

In `config/initializers/recaptcha.rb` modify:

		Recaptcha.configure do |config|
			config.public_key  = '6LebTwsTAAAAAxxxxxxxxxxxxxxxx'
			config.private_key = '6LebTwsTAAAAAyyyyyyyyyyyyyy'
			# Uncomment the following line if you are using a proxy server:
			# config.proxy = 'http://myproxy.com.au:8080'
			# Uncomment if you want to use the newer version of the API,
			# only works for versions >= 0.3.7:
			# config.api_version = 'v2'
		end

with your recaptcha keys.

In `config/initializers/spree_contact_us.rb` modify:

    config.mailer_to = "contact@please-change-me.com"

Change to the email address you would like to receive the form submissions at for example:

    config.mailer_to = "contact@yourdomain.com"

By default the emails from field will be the email entered by the user to easily reply, but this may not be allowed if your required to verify your sending email addresses.
You may also specify an email address for the notification emails from field:

    config.mailer_from = "dontreply@yourdomain.com"

If you would like to add a name or subject field to the form you may simply set the options to true within the spree_contact_us initializer located at `config/initializers/spree_contact_us.rb`:

    config.require_name = true
    config.require_subject = true

You may also update your locales under `config/locales/spree_contact_us.en.yml` or create your own.  Please feel free to submit your own locales so that other users will hopefully find this gem more useful.

#### ADD A CONVERISION TRACKING CODE

If you need to print a conversion tracking code on contact sent, you can setup a spree preference for this. Just open a Rails console in your application and launch:

    Spree::ContactUs::Config[:contact_tracking_message] = 'nothing special'

Everything that is not an empty string will cause a flash ("contact_tracking") message to be created. You can use it somewhere in your layout like this:

    <% if flash[:contact_tracking] %>
        put your conversion tracking code here
    <% end %>

By default the preference has an empty string value so no flash messages will be created until you don't need it.

## USAGE

Visit your website and navigate to `/contact-us` to see the form in action.

## ISSUES

Please report any bugs or feature requests to the Github issues page @ https://github.com/spree-contrib/spree_contact_us/issues

## CONTRIBUTING

In the spirit of [free software](http://www.fsf.org/licensing/essays/free-sw.html), **everyone** is encouraged to help improve this project.


