class CreateDeepLearnings < ActiveRecord::Migration[5.1]
  def change
    create_table :deep_learnings do |t|

      t.timestamps
    end
  end
end
