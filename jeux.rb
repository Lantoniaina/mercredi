class MonterEscalier
$position = 1
def building_pyramid(initial)
    pos = initial.to_i
    @num = 10
    diez = 1
    while @num > 0
        if @num == pos
            space = @num - 1
            puts " "*space << "L" << "#"*diez
        else
            puts " "*@num << "#"*diez
        end
        @num -= 1
        diez += 2
    end
end
def jeux
    puts "Voulez-vous rejouer? (o/n) "
            reps = gets.chomp.to_s.downcase
            if reps == "o"
            $position = 1
            building_pyramid($position)
            elsif reps == "n"
                exit
            else 
                $position = 1
                puts "Entrer : 'o' ou 'n'"
                jeux
            end
end
def lancer
    # 5 || 6 avance d'une etage
    # 1 descend d'une etage
    # 2 3 4 rien ne se passe
    # 10 terminer 
    puts "Jouer à LA MONTER EN ESCALIER"  
    building_pyramid($position)
    puts "Entrer un chiffre"
    print "> "   
    x = gets.chomp.to_i
    if x == 5 || x == 6
        $position += 1
        if $position == 11
            puts "FELICITATION! Vous avez gagner!!!!"
            jeux
        else
            building_pyramid($position)
            puts "Vous avez avancer d'une case : maintenant vous etes en #{$position - 1} etages"
        end
    elsif x == 1
        $position -= 1
        if $position == 0
            $position = 1 
            building_pyramid($position)  
            puts "GAME OVER : il faut monter au lieu de descendre" 
            jeux  
            else
            puts "Vous avez reculer d'une case : maintenant vous etes en #{$position - 1} etages"
            end
    elsif x == 2 || x == 3 || x == 4
        building_pyramid($position)
        puts "Votre avatar a boudé au #{$position - 1} etages"
    else 
        building_pyramid($position)
        puts "Nombre entre 1 et 6 seulement"
    end
    lancer
end
end
jouer = MonterEscalier.new
jouer.lancer