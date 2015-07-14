class Puppy < ActiveRecord::Base
	validates :name, presence: true
	validates :age, presence: true
	validates :breed, presence: true
	validates :image, presence: true
	validates :bio, presence: true
end
