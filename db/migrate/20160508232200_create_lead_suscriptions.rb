class CreateLeadSuscriptions < ActiveRecord::Migration
  def change
    create_table :lead_suscriptions do |t|
      t.references :lead, index: true, foreign_key: true
      t.references :suscription, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
