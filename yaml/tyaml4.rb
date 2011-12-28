#!/usr/bin/env ruby
##<+>
##Ruby yaml sample
##ruby yaml
##2011/12/28

require 'yaml'

config =  {'user' =>'blue@gmail.com',
	'password' => '123456'}
open('text.cfg','w'){|f| YAML.dump(config,f)}

open('text.cfg'){|f| puts f.read}
config2={}
open('text.cfg'){|f| config2=YAML.load(f)}
puts config2['user']
