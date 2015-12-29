ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column "Approve" do |user|
      link_to("Approve", status_approve_path(id: user), method: :get )
    end
    column "Reject" do |user|
      link_to("Reject", status_reject_path(id: user), method: :get )
    end
    column :approved
    actions
end

show do |u|
   default_main_content
   panel "Your Added Stuff" do
     u.approved

   end
 end



end
