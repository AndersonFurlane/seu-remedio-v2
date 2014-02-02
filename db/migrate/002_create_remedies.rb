class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies do |t|
		  t.references :user
      t.string :title, default: ''

      t.timestamps
    end
    add_index :remedies, :title
    add_index :remedies, :user_id
  end
end
