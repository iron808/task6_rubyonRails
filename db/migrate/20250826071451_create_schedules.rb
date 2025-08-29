class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start
      t.date :finish
      t.string :eod

      t.timestamps
    end
  end
end
