class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :department
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
