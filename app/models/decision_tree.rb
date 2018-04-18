class DecisionTree < ApplicationRecord
  self.table_name = "decision_tree"

  scope :numberOfAllCust, -> { all.count() }
  scope :numberOfYesClass, -> { where(" y = 'yes'").count() }
  scope :numberOfNoClass, -> { where(" y = 'no'").count()}

  scope :numCorrectPredictions, -> {where(" y = prediction_y ").count()}
  scope :numInCorrectPredictions, -> {where(" y <> prediction_y ").count()}
  scope :numTrueNegative, -> {where(" y = 'no' AND prediction_y = 'no' ").count()}
  scope :numTruePositive, -> {where(" y = 'yes' AND prediction_y = 'yes' ").count()}
  scope :numFalseNegative, -> {where(" y = 'yes' AND prediction_y = 'no' ").count()}
  scope :numFalsePositive, -> {where(" y = 'no' AND prediction_y = 'yes' ").count()}

end
