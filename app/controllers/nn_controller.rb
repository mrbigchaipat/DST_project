class NnController < ApplicationController
  def result
    @numCorrectPredictions = DeepLearning.numCorrectPredictions
    @numInCorrectPredictions = DeepLearning.numInCorrectPredictions
    @numberOfAllCust = DeepLearning.numberOfAllCust

    @numTrueNegative = DeepLearning.numTrueNegative
    @numTruePositive = DeepLearning.numTruePositive
    @numFalseNegative = DeepLearning.numFalseNegative
    @numFalsePositive = DeepLearning.numFalsePositive

    @accuracy = (@numCorrectPredictions.to_f / @numberOfAllCust * 100).round(2)
    @true_yes_recall = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @true_no_recall = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)
    @predicted_yes_precision = (@numTruePositive.to_f/(@numFalsePositive + @numTruePositive) * 100 ).round(2)
    @predicted_no_precision = (@numTrueNegative.to_f/(@numTrueNegative + @numFalseNegative) * 100 ).round(2)

    @sensitivity = (@numTruePositive.to_f/(@numFalseNegative + @numTruePositive) * 100 ).round(2)
    @specificity = (@numTrueNegative.to_f/(@numTrueNegative + @numFalsePositive) * 100 ).round(2)
  end
end
