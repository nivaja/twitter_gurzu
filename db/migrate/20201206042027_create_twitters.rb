class CreateTwitters < ActiveRecord::Migration[6.0]
  def change
    create_table :twitters do |t|
      t.string :tilte
      t.text :desc

      t.timestamps
    end
  end
end
