def num
	puts "Combien d'étages voulez-vous pour votre pyramide,qui varie de 5 à 25: "
	num =gets.chomp.to_i

	diez = 1
	while num > 0 
		puts " "*num << "#" *diez
		num -= 1
		diez += 2
		
	end
end
puts num