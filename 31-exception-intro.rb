# https://ruby-doc.org/core-2.7.1/Exception.html




puts "CASE 1:".ljust(40, "-")
begin  
   # raise 'A test exception.'  
   1 / 0

rescue ZeroDivisionError => e     #  Or ZeroDivisionError
   puts e.message  
   puts e.backtrace.inspect  

rescue Exception => e
	p e

ensure  # finally in other language
	puts "This will always be executed"
end  
