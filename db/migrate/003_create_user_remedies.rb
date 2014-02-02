class CreateUserRemedies < ActiveRecord::Migration
  def change
    create_table(:user_remedies) do |t|
      t.references :user
      t.references :remedy
      t.date :start_at
      t.date :end_at
    end
    add_index :user_remedies, :user_id
    add_index :user_remedies, :remedy_id
  end
end