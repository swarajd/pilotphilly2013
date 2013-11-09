class Contact < ActiveRecord::Base
  # attr_accessible :title, :body
	belongs_to :member
end


class CreateContacts < ActiveRecord::Migration
	def up
		create_table :contacts do |t|

			t.string :mobile , :null => false, :default => “”
			t.string :address , :null => false, :default => “”

		end
	end

	def down
		drop_table :contacts

	end
end

