class AddRotumidToApproval < ActiveRecord::Migration
  def change
    add_column :approvals, :rotumid, :integer
  end
end
