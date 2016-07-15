class AddLatLonToImpression < ActiveRecord::Migration
  def change
    add_column :impressions, :longitude, :float
    add_column :impressions, :latitude, :float
  end
end
