class DtController < ApplicationController
  def result
    @numCorrectPredictions = DecisionTree.numCorrectPredictions
    @numInCorrectPredictions = DecisionTree.numInCorrectPredictions
    @numberOfAllCust = DecisionTree.numberOfAllCust

    @numTrueNegative = DecisionTree.numTrueNegative
    @numTruePositive = DecisionTree.numTruePositive
    @numFalseNegative = DecisionTree.numFalseNegative
    @numFalsePositive = DecisionTree.numFalsePositive

    @accuracy = (@numCorrectPredictions.to_f / @numberOfAllCust * 100).round(2)
    @true_yes_recall = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @true_no_recall = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)
    @predicted_yes_precision = (@numTruePositive.to_f/(@numFalsePositive + @numTruePositive) * 100 ).round(2)
    @predicted_no_precision = (@numTrueNegative.to_f/(@numTrueNegative + @numFalseNegative) * 100 ).round(2)

    @sensitivity = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @specificity = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)


  end
end
