# Tracksmith

## Installation


- Complete the installation in an existing Rails application:
  minimum:

  `bundle exec rake db:migrate`

  `bundle exec rake db:seed`

  `bundle exec rake spree_sample:load` # optional

  `bin/rails server`

  login to spree backend on http://localhost:3000/shop/admin

  then http://localhost:3000/admin (alchemy backend)

  spree frontend: http://localhost:3000/shop


### Stripe
- add this `gem 'activemerchant', '~> 1.47.0'` to Gemfile if needed;
- create the stripe account https://dashboard.stripe.com/register;
- secret keys on https://dashboard.stripe.com/account/apikeys;
- valid test cards here: https://stripe.com/docs/testing;
- login to spree backend go to http://yourhost.com/shop/admin/payment_methods/new (Configuration >> Payment Methods > New Payment Method) and select 'Spree::Gateway::StripeGateway' Provider.


### Build Status
Master: [![Circle CI](https://circleci.com/gh/tracksmith/track_v2/tree/master.svg?style=svg&circle-token=b3b3407b0213ca2407b0332de02d86e20a0b382a)](https://circleci.com/gh/tracksmith/track_v2/tree/master) Develop: [![Circle CI](https://circleci.com/gh/tracksmith/track_v2/tree/develop.svg?style=svg&circle-token=b3b3407b0213ca2407b0332de02d86e20a0b382a)](https://circleci.com/gh/tracksmith/track_v2/tree/develop)

## Workflow

### Git
We will be using [Atlassian's Git Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

### CircleCI
[CircleCI](https://circleci.com/gh/tracksmith/track_v2) will be our CI system run on each commit pushed to Github.
With each commit the following will be run:
- Unit Tests
- Linting | [JavaScript](http://jshint.com) : [Ruby](https://github.com/bbatsov/rubocop)
- [Rails Schema Check](https://github.com/raimondasv/pronto-rails_schema)
- [Rails Security Checks](https://github.com/presidentbeef/brakeman)

The result of CircleCI will be displayed on the branch / pull request. If there are linting issues they will be added as comments on your commit / pull request.

#### Running CI Checks Locally

To run all code quality checks:

`bundle exec pronto run --commit=$(git log --pretty=format:%H | tail -1)`

To run unit tests:

`bundle exec rake test spec`

### Linting
[Rubocop](https://github.com/bbatsov/rubocop) will be we use for ruby linting. There has been a slight modification made to the default rules
that increase the line length limit to 200 characters.

[JSHint](http://jshint.com) will be what we use for JavaScript linting.

 *Note: Any violations of the lint rules will show up as a comment on the commit or pull request.*

It may be helpful to integrate Rubocop into your favorite editor, more information can be found [here](https://github.com/bbatsov/rubocop)

### Changelog

The change log should be updated when major changes occur on the project. These should be
changes that are interesting to a non-technical user and in terms that a non-tecnical user can easily understand.

The format for the change log should adhere to [Keep a CHANGELOG](http://keepachangelog.com)

## [3-0-beta]
### Added
- spree_shipstation v 3.1
- spree_active_shipping v 3.0.0.beta
- spree_asset_variant_options v 3.0.4
- spree_affiliate v 3.0.4
- spree_chimpy v 2.0.0.alpha
- alchemy_spree v 3.0.4 with alchemy cms v 3.1 incompatible with spree_minicart v 3.0.4 so far
- spree_store_credits v 3.0.4
- spree_address_book v 3.0.4
- spree_advanced_reporting v 3.0.0
