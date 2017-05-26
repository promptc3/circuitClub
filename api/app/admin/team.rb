ActiveAdmin.register Team do
 permit_params :name
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
												 row("Members"){team.users}
								 end
				 end
 end

 form do |f|
		f.semantic_errors
	  f.inputs "Student Details" do
					 f.input :name, label: 'Team Name'
		end
	 f.actions	
 end
end
