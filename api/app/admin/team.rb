ActiveAdmin.register Team do
 permit_params :name, :user
 config.batch_actions = true
 filter :name
 index do
				 selectable_column
				 id_column
				 column :name
				 column :user_ids
 end

 show :title => :name do
				 panel "Team #{team.name}" do
								 attributes_table_for team do
												 row("Name"){team.name}
												 row("Members"){team.user_ids}
								 end
				 end
 end

 form do |f|
		f.semantic_errors
	  f.inputs "Student Details" do
					 f.input :name, label: 'Team Name'
		       f.has_many :users,heading: 'Members',as: :select,collection: User.all,allow_destroy: true do |t|
					 	  t.input :roll
		       end
		end
	 f.actions	
 end
end
