class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :status
      t.date :attend_date
      t.timestamp :in_time
      t.timestamp :out_time
      t.time :break_time
      t.text :reason

      t.timestamps
    end
  end
end
