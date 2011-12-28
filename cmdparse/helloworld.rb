#!/usr/bin/env ruby
##<+>
##Ruby命令行程序生成
##cmd ruby 命令行
##2011/12/28

require 'rubygems'
require 'cmdparse'

cmd = CmdParse::CommandParser.new(true,true)

cmd.program_name = "helloworld"

cmd.add_command(CmdParse::HelpCommand.new, true)

new_command=CmdParse::Command.new('hello',false)
new_command.short_desc = 'Say hello'
new_command.set_execution_block do
	puts "hello world!"
end

cmd.add_command(new_command)
cmd.parse
