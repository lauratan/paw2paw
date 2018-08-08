class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.integer :sitter_id
      t.integer :user_id

      t.timestamps
    end
  end
end
