class AddReporterToReport < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :reporter, :string
    add_column :reports, :location, :string
    add_column :reports, :description, :string
  end
end
