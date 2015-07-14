class Puppy < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :age, presence: true
	validates :breed, presence: true
	validates :bio, presence: true
end
