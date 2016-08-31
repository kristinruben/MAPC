class CreateTable < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, unique: true
      t.string :password, null: false, minimum: 6
      t.string :project_name, null: false
      t.integer :organization_name, null: false
      t.integer :dryers_available, null: false
    end
  end
end
