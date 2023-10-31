class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :rating
      t.belongs_to :anatomy_module, null: false, foreign_key: true
      t.text :review

      t.timestamps
    end
  end
end
