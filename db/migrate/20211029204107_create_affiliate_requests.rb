class CreateAffiliateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :affiliate_requests do |t|
      t.belongs_to :user, foreign_key: true
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
