class RemoveDateFromReport < ActiveRecord::Migration[6.1]
  def change
    remove_column :reports, :date, :string
  end
end
