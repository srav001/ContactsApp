class AddNewBreifnoteField < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :breif_note, :text
  end
end
