class Category < ActiveRecord::Base
	has_many :suscriptions
  validates :name, uniqueness: true
end
