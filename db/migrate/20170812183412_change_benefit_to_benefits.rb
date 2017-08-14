class ChangeBenefitToBenefits < ActiveRecord::Migration[5.1]
  def change
    rename_column :internships, :benefit, :benefits
  end
end
