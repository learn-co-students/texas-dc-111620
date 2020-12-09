class CreatePlaydates < ActiveRecord::Migration[6.0]
  def change
    create_table :playdates do |t|
      t.integer :person_id
      t.integer :kitten_id
      t.integer :time
      t.string :date
    end
  end
end
