class AddBannerToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :banner_url, :string
  end
end
