[![Gem Version](https://badge.fury.io/rb/numbers.svg)](http://badge.fury.io/rb/numbers)
##Summary

* This gem acts as a wrapper to the [Numbers Api](https://www.mashape.com/divad12/numbers-1).

##Usage

####Install

```
gem install numbers
```
####Install Dependencies
```
gem install faraday
gem install json
```

####Require

```ruby
require 'numbers'
```

####Set API key

```ruby
Numbers.api_key = "abcxyz"
```

####Get date fact


```ruby
Numbers.get_date_fact(21,6)
=> {"text"=>"September 6th is the day in 1963 that the Centre for International Industrial Property Studies (CEIPI) is founded.", 
	"year"=>1963, 
	"number"=>250, 
	"found"=>true, 
	"type"=>"date"}

```

####Get math fact


```ruby
Numbers.get_math_fact(25)
=> {"text"=>"25 is a square number, being 5² = 5 × 5.", 
	"number"=>25, 
	"found"=>true, 
	"type"=>"math"}
```

####Get random fact


```ruby
Numbers.get_random_fact
=> {"text"=>"April 25th is the day in 1792 that Highwayman Nicolas J. Pelletier becomes the first person executed by guillotine.", 
	"year"=>1792, 
	"number"=>116, 
	"found"=>true, 
	"type"=>"date"}
```

####Get trivia fact


```ruby
Numbers.get_trivia_fact(5)
=> {"text"=>"5 is the number of completed, numbered piano concertos of Ludwig van Beethoven, Sergei Prokofiev, and Camille Saint-Saëns.", 
	"number"=>5, 
	"found"=>true, 
	"type"=>"trivia"}
```

####Get year fact


```ruby
Numbers.get_year_fact(9)
=> {"text"=>"9 is the year that Wang Mang founds the short-lived Xin Dynasty in China (until 25).", 
	"number"=>9, 
	"found"=>true, 
	"type"=>"year"}
```

##Todo
* tests
