class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :contact
    	t.string :password
    	t.datetime :date_of_birth
    	t.string :sex

      t.timestamps
    end
  end
end
