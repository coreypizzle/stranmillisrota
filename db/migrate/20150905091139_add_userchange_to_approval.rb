class AddUserchangeToApproval < ActiveRecord::Migration
  def change
    add_column :approvals, :userchange, :string
  end
end
