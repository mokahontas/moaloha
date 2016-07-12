class AddNamusId < ActiveRecord::Migration
  def change
    add_column :missing_people, :namus_id, :integer

  end
end
