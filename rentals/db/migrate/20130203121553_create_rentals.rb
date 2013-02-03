class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :sdate
      t.date :edate
      t.string :aite_tantousya
      t.string :aite_syamei
      t.string :aite_tel
      t.string :tantousya

      t.timestamps
    end
  end
end
