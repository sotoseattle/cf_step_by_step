class Guide < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 3 }

  has_many :steps, dependent: :destroy
end
