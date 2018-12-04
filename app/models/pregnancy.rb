class Pregnancy < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :earring_id, :uniqueness => true

  validates :earring_id, :presence => true

  validates :earring_id, :length => { :minimum => 2, :maximum => 4 }

end
