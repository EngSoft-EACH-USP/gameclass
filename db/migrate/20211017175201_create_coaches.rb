class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.belongs_to :user, foreign_key: true
      t.text :game
      t.text :description
      t.string :whatsapp

      t.timestamps
    end
  end
end
