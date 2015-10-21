# lita-heroku-status

A Lita handler to display current Heroku Status.

## Installation

Add lita-heroku-status to your Lita instance's Gemfile:

``` ruby
gem "lita-heroku-status"
```

## Configuration

None.

## Usage

```
Lita > lita heroku status
Heroku Status: Production is green, Development is green
```

```
Lita > lita heroku issues
2015-10-21T00:10:49Z  Billing Dashboard Issues  https://status.heroku.com/incidents/819
2015-10-19T23:03:03Z  Issues with Heroku Scheduler  https://status.heroku.com/incidents/818
2015-10-16T17:24:52Z  Issue starting one-off dynos  https://status.heroku.com/incidents/817
2015-10-15T17:50:00Z  Billing Dashboard Issues  https://status.heroku.com/incidents/816
2015-09-28T22:49:57Z  Elevated Build Errors for New Accounts  https://status.heroku.com/incidents/815
```
