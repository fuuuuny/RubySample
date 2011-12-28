#!/usr/bin/env ruby
##<+>
##Ruby yaml sample
##ruby yaml
##2011/12/28

require 'yaml'

config =  {'color' =>'blue',
	'font' => 'new romain',
	'font-size' => 7}
open('text.cfg','w'){|f| YAML.dump(config,f)}

open('text.cfg'){|f| puts f.read}
	
open('text.cfg'){|f| YAML.load(f)}

