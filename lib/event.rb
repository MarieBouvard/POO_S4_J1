
#### Partie 2 : Création d'un événement ########



##### Rappel des GEMS du fichier Gemfile ###### 
require "pry" 
require "time"


class Event ### Définition d'une classe Event
	attr_accessor :start_date, :duration, :title, :attendees #### Variables d'Instance 
	
###### Initialisation des variables d'instance 
	def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save) 
		@start_date = Time.parse(start_date_to_save)
		@duration = duration_to_save
		@title = title_to_save
		@attendees = attendees_to_save
	end
	
	
	
#### Décalage de l'événement
	def postpone_24h
		return @start_date + 60*60*24
	end
	
	
	
#### Date de fin de l'événement
	def end_date
		return @start_date + @duration
	end
	
	
	
#### Evenement passé ou non ? True pour passé , false sinon. 	
	def is_past?
		if @start_date < Time.now then
			true
		else
			false
		end
	end
	
	
	
#### Evenement dans le futur ou non ? True pour futur, false sinon
	def is_future?
		return !is_past?
	end
	
	
	
#### Meilleur affichage de l'évènement	
	def to_s
		puts ">Titre : #{@title}"
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration / 60 } minutes."
		puts ">Invités : #{@attendees.join(", ")}"
	end

end


binding.pry
puts "end of file"

	
	
	

