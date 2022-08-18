class Plant < ApplicationRecord
  belongs_to :garden
  after_save :capitalize_name

  def capitalize_name
    self.name = self.name.capitalize
  end
end
