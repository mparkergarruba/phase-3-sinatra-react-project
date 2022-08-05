class CreateSponsors < ActiveRecord::Migration[6.1]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :industry
      t.string :logo
      t.string :statement
    end
  end
end
