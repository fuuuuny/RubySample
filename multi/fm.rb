#!/usr/bin/env ruby
##<+>
##Ruby 多重分派
##multi 多重分派 ruby
##2011/12/28

require 'rubygems'
require 'multi'

multi(:fib,0){0}
multi(:fib,1){1}
multi(:fib,Integer){|i| fib(i-1)+fib(i-2)}

print fib(16)
puts

def ffib(i)
	if i==0 or i==1 
		i
	else
		ffib(i-1)+ffib(i-2)
	end
end

print ffib(16)
puts
