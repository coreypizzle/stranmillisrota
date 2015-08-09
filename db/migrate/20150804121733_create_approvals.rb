class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.string :week

      t.timestamps
    end
  end
end
