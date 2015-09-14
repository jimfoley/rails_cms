class SectionEdit < ActiveRecord::Base

	# belongs_to :admin_user 
	belongs_to :editor, :class_name => 'AdminUser', :foreign_key => 'admin_user_id'
  # above specify foreign key because rails expects editor_id
	belongs_to :section

end
