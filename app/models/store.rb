class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  before_validation :generate_url

  has_many :items
  has_many :orders

  def generate_url
    self.url = name.parameterize
  end
end
