class Idea < ApplicationRecord
  VALID_TITLES = ['Gandalf Rules', 'Scott Rocks']
  validates :title, uniqueness: true
  validates :title, inclusion: { in: VALID_TITLES }
end
