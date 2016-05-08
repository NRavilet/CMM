class LeadSuscription < ActiveRecord::Base
  belongs_to :lead
  belongs_to :suscription
end
