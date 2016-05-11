class Lead < ActiveRecord::Base

  has_many :messages, class_name: "Ahoy::Message", as: :user

	has_many :lead_suscriptions
	has_many :suscriptions, :through => :lead_suscriptions
  has_many :categories
	validates :name, :lastname, :company, :industry, presence: true
  validates :email, uniqueness: true

end
