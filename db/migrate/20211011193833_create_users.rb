class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      # Session
      t.string :username
      t.string :password
      t.integer :kind

      # Info
      t.string :name
      t.text :description
      t.string :whatsapp

      t.timestamps
    end
  end
end
