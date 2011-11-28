# ActsAsOrdered

Add 'ordered' scope to your ActiveRecord models

## Installation

Add to your Gemfile and run the `bundle` command to install it.

 ```ruby
 gem "acts_as_ordered"
 ```



## Usage

Call `acts_as_ordered` in an ActiveRecord class.

 ```ruby
 class List < ActiveRecord::Base
   acts_as_ordered
 end
 ```

It is possible to pass the name of the attribute that will be used as the default ordering column as well as the direction.

 ```ruby
 acts_as_ordered(:name)
 acts_as_ordered(:name, :desc)
 ```

Then use the injected scope

 ```ruby
 List.ordered
 List.ordered(:name)
 List.ordered(:name, :desc)
 ```

## Development

Missing tests

Questions or problems? Please post them on the [issue tracker](https://github.com/semiweb/acts_as_ordered/issues). You can contribute changes by forking the project and submitting a pull request.

This gem is created by Semiweb and is under the MIT License.