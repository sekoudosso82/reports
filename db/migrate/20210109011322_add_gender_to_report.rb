class AddGenderToReport < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :gender, :string 
  end
end
