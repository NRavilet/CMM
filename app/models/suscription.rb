class Suscription < ActiveRecord::Base
	has_many :lead_suscriptions
	has_many :leads, :through => :lead_suscriptions

	belongs_to :category
end
