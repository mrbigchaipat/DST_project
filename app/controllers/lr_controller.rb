class LrController < ApplicationController

  def result
    @numCorrectPredictions = Logistic.numCorrectPredictions
    @numInCorrectPredictions = Logistic.numInCorrectPredictions
    @numberOfAllCust = Logistic.numberOfAllCust

    @numTrueNegative = Logistic.numTrueNegative
    @numTruePositive = Logistic.numTruePositive
    @numFalseNegative = Logistic.numFalseNegative
    @numFalsePositive = Logistic.numFalsePositive

    @accuracy = (@numCorrectPredictions.to_f / @numberOfAllCust * 100).round(2)
    @true_yes_recall = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @true_no_recall = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)
    @predicted_yes_precision = (@numTruePositive.to_f/(@numFalsePositive + @numTruePositive) * 100 ).round(2)
    @predicted_no_precision = (@numTrueNegative.to_f/(@numTrueNegative + @numFalseNegative) * 100 ).round(2)

    @sensitivity = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @specificity = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)
  end
end
