class User < ApplicationRecord
  has_and_belongs_to_many :sectors

  validates :name, :sectors, presence: true
  validates :agree_to_terms, acceptance: true
end
