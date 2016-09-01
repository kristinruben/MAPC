class AlterTable < ActiveRecord::Migration
  def change
    remove_column :demos, :organization_name, :integer
    remove_column :demos, :dryers_available, :integer
    add_column :demos, :organization_name, :string
  end
end
