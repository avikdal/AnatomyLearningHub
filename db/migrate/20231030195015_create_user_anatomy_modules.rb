class CreateUserAnatomyModules < ActiveRecord::Migration[7.0]
  def change
    create_table :user_anatomy_modules do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :anatomy_module, null: false, foreign_key: true

      t.timestamps
    end
  end
end
