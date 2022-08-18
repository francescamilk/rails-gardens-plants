class AddBannerToGardens < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :banner_url, :string
  end
end
