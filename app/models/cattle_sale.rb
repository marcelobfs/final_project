class CattleSale < ApplicationRecord
  # Direct associations

  belongs_to :cattle,
             :class_name => "CattleCatalog"

  # Indirect associations

  # Validations

end
