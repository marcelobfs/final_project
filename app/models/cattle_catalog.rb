class CattleCatalog < ApplicationRecord
  # Direct associations

  has_one    :cattle_sale,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  has_one    :death,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  has_many   :vaccinations,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  has_many   :weightings,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  has_many   :pregnancies,
             :foreign_key => "cattle_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
