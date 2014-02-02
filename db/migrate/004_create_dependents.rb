class CreateDependents < ActiveRecord::Migration
  def change
    create_table(:dependents) do |t|
      t.references :user
      t.references :remedy
      t.string :name
      t.string :phone
    end
  end
end