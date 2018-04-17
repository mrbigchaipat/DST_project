class DashboardController < ApplicationController
  #before_action :authenticate_user!
  def index

    @numberOfAllCust = Logistic.numberOfAllCust
    @numberOfYesClass = Logistic.numberOfYesClass
    @numberOfNoClass = Logistic.numberOfNoClass

    @numOfCorrectPredictNoWithLowConf = Logistic.numOfCorrectPredictNoWithLowConf
    @numOfCorrectPredictNoWithMediumConf = Logistic.numOfCorrectPredictNoWithMediumConf
    @numOfCorrectPredictNoWithHighConf = Logistic.numOfCorrectPredictNoWithHighConf
    @numOfCorrectPredictNoWithVeryHighConf = Logistic.numOfCorrectPredictNoWithVeryHighConf

    @correctPredictNoWithLowConf = Logistic.correctPredictNoWithLowConf.group("marital").count()
    @correctPredictNoWithMediumConf = Logistic.correctPredictNoWithMediumConf
    @correctPredictNoWithHighConf = Logistic.correctPredictNoWithHighConf
    @correctPredictNoWithVeryHighConf = Logistic.correctPredictNoWithVeryHighConf


    @data = [["Confidence between 0.5 - 0.6", @numOfCorrectPredictNoWithLowConf],
         ["Confidence between 0.6 - 0.7", @numOfCorrectPredictNoWithMediumConf],
         ["Confidence between 0.7 - 0.8", @numOfCorrectPredictNoWithHighConf]]
  end
end
