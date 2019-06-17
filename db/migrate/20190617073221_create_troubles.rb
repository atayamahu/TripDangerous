class CreateTroubles < ActiveRecord::Migration[5.2]
  def change
    create_table :troubles do |t|
      t.text :description
      t.string :type
      t.string :continent
      t.string :country
      t.string :region
      t.datetime :date_occurrence

      t.timestamps
    end
  end
end
