class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.string :name
      t.string :lastname
      t.string :company
      t.string :role
      t.string :area
      t.string :industry
      t.integer :phone
      t.string :module
      t.string :status

      t.timestamps null: false
    end
  end
end
