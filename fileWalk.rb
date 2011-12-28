#!/usr/bin/env ruby
##<+>
#Ruby遍历目录
#file find Ruby
#2011/12/27

require 'find'

def fileWalk(path)
	Find.find(path) do |f|
		type = "File" if File.file?(f)
		type = "Dir" if File.directory?(f)
		if(type != "File"&& type != "Dir")
			type = " ?"
		end
		puts "#{type}: #{f}"
	end
end

fileWalk('./')
