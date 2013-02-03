class CreateUsbs < ActiveRecord::Migration
  def change
    create_table :usbs do |t|
      t.string :fabaid
      t.string :type

      t.timestamps
    end
  end
end
