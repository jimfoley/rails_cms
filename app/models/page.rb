class Page < ActiveRecord::Base

	belongs_to :subject
	# has_and_belongs_to_many :admin_users
	# going to change above and use 'editors' in place of 'admin_users' for clarity
	has_and_belongs_to_many :editors, :class_name => 'AdminUser'

	# using a different join table name
	# has_and_belongs_to_many :admin_users, :join_table => 'admin_users'
	# need to add on both sides of the relationship

end
