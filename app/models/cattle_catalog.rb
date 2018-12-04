class CattleCatalog < ApplicationRecord
  # Direct associations

  has_many   :pregnancies,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
