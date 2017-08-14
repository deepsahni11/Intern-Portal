class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :hr_name
      t.string :contact
      t.string :email_id

      t.timestamps
    end
  end
end
