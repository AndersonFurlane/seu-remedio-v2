class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders, options: 'engine=MyISAM DEFAULT CHARSET=utf8' do |t|
      t.references :user
      t.references :remedy

      t.string :title
      t.date :start_at
      t.date :end_at
      t.integer :range_days
      t.boolean :forever_remedy, default: false
      t.boolean :dependent, default: false
      t.string :dependent_email
      t.string :dependent_name

      t.timestamps
    end
    add_index :reminders, :id
    add_index :reminders, :title
  end
end