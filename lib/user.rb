###### PARTIE 1 : définition de la fonction User avec écriture et lecture de l'âge et de l'adresse mail #####

require "pry"
class User
	attr_accessor :email, :age
	@@all_users = 0
		
		def initialize(email_to_save, age_to_save)
			@email = email_to_save
			@age = age_to_save
			@@all_users = @@all_users + 1 
		end

		
		def self.all
			return @@all_users
		end
		


#### Partie 2 : renvoie l'adresse email d'un user. 
		
		def find_by_email(email)
			@@all_users.each do |element|
				if element = email then 
					element
				else
					puts "Erreur! ce mail n'est pas associé à un user"
				end
			end
		end
				
		
end

binding.pry
puts "end of file"
