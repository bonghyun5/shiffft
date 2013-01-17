class CreateShiftEvents < ActiveRecord::Migration
  def change
    create_table :shift_events do |t|
      t.string :title
      t.string :organization
      t.string :location
      t.string :admin_name
      t.string :admin_email

      t.timestamps
    end
  end
end
