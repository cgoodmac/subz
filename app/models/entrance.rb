class Entrance < ActiveRecord::Base
	has_and_belongs_to_many :lines
	validates :name, :uniqueness => true

	def self.text_search(query)
  		self.where("name @@ :q or line @@ :q", :q => query)
  	end
end