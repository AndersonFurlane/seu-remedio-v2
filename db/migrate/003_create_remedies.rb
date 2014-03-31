class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies, options: 'engine=MyISAM DEFAULT CHARSET=utf8' do |t|
      t.references :reminder
      t.references :user
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :remedies, :id
    add_index :remedies, :name
  end
end