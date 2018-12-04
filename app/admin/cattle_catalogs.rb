ActiveAdmin.register CattleCatalog do

 permit_params :first_weight, :source, :race, :gender, :price_per_kilo, :father, :earring_id, :purchase_or_weaning_date, :mother_earring_id, :birthdate, :status
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
