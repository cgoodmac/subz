class Entrance < ActiveRecord::Base
	has_and_belongs_to_many :lines
	validates :name, :uniqueness => true
end