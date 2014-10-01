class Step < ActiveRecord::Base
  belongs_to :guide

  validates :name, presence: true
end
