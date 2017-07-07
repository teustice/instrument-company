class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
       t.belongs_to :user, index: true
       t.belongs_to :instrument, index: true
       t.column :title, :string
       t.column :content, :string
       t.timestamps
    end
  end
end
