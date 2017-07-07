class CreateInstruments < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments do |t|
      t.column :brand, :string
      t.column :description, :string
      t.attachment :image
      t.column :price, :integer
      t.timestamps
    end
  end
end
