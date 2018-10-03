def perform

	def define_password
	   puts "Entrer votre mot de passe svp: "
	   @user_password=gets.chomp.to_s
    end
    define_password
       def password_verification
	      puts "Entrer votre mot de passe une nouvelle fois: "
	      @user_password1=gets.chomp.to_s
	   end
	password_verification
   
	if  @user_password != @user_password1 
		puts "Mot de passe incorrect;entrer de nouveau: "
		@user_password=gets.chomp.to_s
		
		puts "Entrer le mot de passe une nouvelle fois: "
		 @user_password1=gets.chomp.to_s
	else
			puts "Bienvenue sur votre Compte!!!"
	end
end
perform

