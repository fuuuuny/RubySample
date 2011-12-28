#!/usr/bin/env ruby
##<+>
##Ruby yaml sample
##ruby yaml
##2011/12/28

require 'yaml'
class Special
	def initialize(valuable, volatile, precious)
		@valuable = valuable
		@volatile = volatile
		@precious = precious
	end

	def to_yaml_properties
		%w{ @valuable @volatile @precious}
	end

	def to_s
		"#@valuable #@volatile #@precious"
	end

end

obj = Special.new("Hello","there", "World")
puts "Before: obj = #{obj}"
data = YAML.dump(obj)
obj = YAML.load(data)
puts "After: obj = #{obj}"

obj = Special.new("Hello","there", "World")
puts YAML.dump(obj)
