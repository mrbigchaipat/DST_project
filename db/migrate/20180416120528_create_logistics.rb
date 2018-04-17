class CreateLogistics < ActiveRecord::Migration[5.1]
  def change
    create_table :logistics do |t|

      t.timestamps
    end
  end
end
