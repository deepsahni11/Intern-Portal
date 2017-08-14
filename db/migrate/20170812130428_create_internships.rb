class CreateInternships < ActiveRecord::Migration[5.1]
  def change
    create_table :internships do |t|
      t.string :work
      t.string :stipend
      t.text :benefit
      t.string :duration
      t.string :location
      t.text :details
      t.string :postion_status

      t.timestamps
    end
  end
end
