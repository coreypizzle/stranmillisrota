class CreateRota < ActiveRecord::Migration
  def change
    create_table :rota do |t|
      t.text :week

      t.timestamps
    end
  end
end
