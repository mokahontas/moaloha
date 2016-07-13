class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.string :ip_address
      t.integer :missing_person_id
      t.string :url
      
      t.timestamps null: false
    end
  end
end
