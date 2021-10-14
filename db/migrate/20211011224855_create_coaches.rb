class CreateCoaches < ActiveRecord::Migration[6.1]
  def change
    create_table :coaches do |t|
      t.string :name
      t.text :description
      t.string :whatsapp

      t.timestamps
    end
  end
end
