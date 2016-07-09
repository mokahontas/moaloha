class CreateMissingPeople < ActiveRecord::Migration
  def change
    create_table :missing_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.text :location
      t.string :island
      t.string :height
      t.string :weight
      t.text :image
      t.string :eye_color
      t.text :information
      t.string :middle_name
      t.string :nickname
      t.datetime :date
      t.float :longitude
      t.float :latitude
      t.string :ethnicity
      t.integer :age
      t.text :circumstances

      t.timestamps null: false
    end
  end
end
