class Comment < ProjectEvent

	validates_length_of :comment, :maximum => 255, :message => "less than %d if you don't mind"
end
