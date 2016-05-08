class Lead < ActiveRecord::Base

	has_many :lead_suscriptions
	has_many :suscriptions, :through => :lead_suscriptions
	validates :name, :lastname, :company, :industry, presence: true
    validates :email, uniqueness: true

end
