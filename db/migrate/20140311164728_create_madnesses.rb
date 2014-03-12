class CreateMadnesses < ActiveRecord::Migration
  def change
    create_table :madnesses do |t|
      t.string :being

      t.timestamps
    end
  end
end
