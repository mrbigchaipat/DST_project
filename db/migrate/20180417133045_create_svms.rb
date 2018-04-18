class CreateSvms < ActiveRecord::Migration[5.1]
  def change
    create_table :svms do |t|

      t.timestamps
    end
  end
end
