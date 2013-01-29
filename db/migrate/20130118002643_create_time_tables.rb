class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.integer :shift_events_id
      t.integer :mon
      t.integer :tues
      t.integer :wed
      t.integer :thur
      t.integer :fri
      t.integer :sat
      t.integer :sun

      t.timestamps
    end
  end
end
