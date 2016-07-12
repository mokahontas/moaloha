class AddToMissingPeople < ActiveRecord::Migration
  def change
    add_column :missing_people, :link, :text
    add_column :missing_people, :hair_color, :string
  end
end
