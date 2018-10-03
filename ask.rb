def ask_first_name
	puts "Quel est votre nom: "
	gets.chomp
end
def say_hello
	puts "Hello"
end
puts "Hello #{ask_first_name}"