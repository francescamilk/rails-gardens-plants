class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
  after_save :capitalize_name
  has_many  :plants, dependent: :destroy

  def capitalize_name
    self.name = self.name.capitalize
  end
end
