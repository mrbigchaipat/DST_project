class CreateDecisionTrees < ActiveRecord::Migration[5.1]
  def change
    create_table :decision_trees do |t|

      t.timestamps
    end
  end
end
