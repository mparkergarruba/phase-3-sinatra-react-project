class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|
      t.integer :annual_amount
      t.integer :year_term
      t.integer :athlete_id
      t.integer :sponsor_id
    end
  end
end
