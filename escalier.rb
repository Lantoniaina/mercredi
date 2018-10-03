class MonterEscalier
$position = 1
def building_pyramid(initial)
    pos = initial.to_i
    @number = 10
    diez = 1
    while @number > 0
        if @number == pos
            space = @number - 1
            puts " "*space << "6" << "#"*diez
        else
            puts " "*@number << "#"*diez
        end
        @number -= 1
        diez += 2
    end
end
def fin
	  puts "Voulez-vous rejouer? (y/n) "
            reps = gets.chomp.to_s.downcase
            if reps == "y"
            $position = 1
            building_pyramid($position)
            elsif reps == "n"
                exit
            else 
                $position = 1
                puts "Entrer : 'y' ou 'n'"
                fin
            end
end