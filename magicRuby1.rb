#!/usr/bin/env ruby
##<+>
#ruby魔法写法
#magic
#2011/12/27

def i(a='')
	print a
end
def love(a='')
	"Hello "+a
end
def you
	"world!\n"
end

i love you

def I
	print "Hello "
	yield
end

def Love
	print "world"
	yield
end

def You
	print "!\n"
	yield
end

I{Love{You{}}}
	

