class AddCategoryToSuscription < ActiveRecord::Migration
  def change
    add_reference :suscriptions, :category, index: true, foreign_key: true
  end
end
