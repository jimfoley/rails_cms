class CreateSectionEdits < ActiveRecord::Migration

  def change
    create_table :section_edits do |t|
    	# reference will add the "_id" for us
    	t.references :admin_user 
    	t.references :section
    	t.string :summary # here is the advantage of rich join
      t.timestamps null: false
    end
    add_index :section_edits, ['admin_user_id', 'section_id']
  end

end
