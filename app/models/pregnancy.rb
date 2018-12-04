class Pregnancy < ApplicationRecord
  # Direct associations

  belongs_to :cattle,
             :class_name => "CattleCatalog",
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :earring_id, :uniqueness => true

  validates :earring_id, :presence => true

  validates :earring_id, :length => { :minimum => 2, :maximum => 4 }

end
