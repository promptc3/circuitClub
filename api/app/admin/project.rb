ActiveAdmin.register Project do
	permit_params :name, :info, :created_at

	index do 
					column :name
					column :info
					column :created_at 
	end
end
