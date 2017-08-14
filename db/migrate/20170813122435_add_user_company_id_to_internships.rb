class AddUserCompanyIdToInternships < ActiveRecord::Migration[5.1]
  def change
    add_column :internships, :user_company_id, :integer
  end
end
