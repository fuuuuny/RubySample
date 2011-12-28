##<+>
##Ruby 在 Windows 下读取键盘输入
##Win32API Windows 键盘 Ruby
##2011/12/26

require 'Win32API'
def getch
	@getch ||= Win32API.new("crtdll","_getch",[],'L')
	@getch.call
end
while(c=getch) != 27
	puts "You taped #{c.chr.inspect}"
end
