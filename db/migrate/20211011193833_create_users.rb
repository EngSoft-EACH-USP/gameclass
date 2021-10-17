class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      # Session
      t.string :username # Required
      t.string :password # Required
      t.integer :kind # Required

      # Info
      t.string :name # Required

      t.timestamps
    end
  end
end
