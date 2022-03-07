class AddTimestampsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :created_at, :datetime
    add_column :employees, :updated_at, :datetime
  end
end
