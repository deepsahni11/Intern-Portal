class ChangePostionStatusToPositionStatus < ActiveRecord::Migration[5.1]
  def change
    rename_column :internships, :postion_status, :position_status
  end
end
