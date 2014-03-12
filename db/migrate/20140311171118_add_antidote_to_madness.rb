class AddAntidoteToMadness < ActiveRecord::Migration
  def change
    add_column :madnesses, :antidote, :string
  end
end
