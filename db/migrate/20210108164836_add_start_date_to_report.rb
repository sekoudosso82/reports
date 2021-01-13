class AddStartDateToReport < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :start_date, :date
  end
end
