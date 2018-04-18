class DashboardController < ApplicationController
  #before_action :authenticate_user!
  before_action :confidenceComparison
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

  def confidenceComparison
    @confidenceNoLogistic = Logistic.find_by_sql("select round(confidence_no::numeric, 2) as confidence_no, count(1) as user_count from logistic
                                group by round(confidence_no::numeric, 2)
                                UNION
                                select confidence_no, user_count from confidence_helper where confidence_no not in
                                (
                                  select round(confidence_no::numeric, 2) from logistic
                                )
                                order by 1 desc;")

    @confidenceNoDecisionTree = DecisionTree.find_by_sql("select round(confidence_no::numeric, 2) as confidence_no, count(1) as user_count from decision_tree
                                group by round(confidence_no::numeric, 2)
                                UNION
                                select confidence_no, user_count from confidence_helper where confidence_no not in
                                (
                                  select round(confidence_no::numeric, 2) from decision_tree
                                )
                                order by 1 desc;")

    @confidenceNoSVM = Svm.find_by_sql("select round(confidence_no::numeric, 2) as confidence_no, count(1) as user_count from svm
                                group by round(confidence_no::numeric, 2)
                                UNION
                                select confidence_no, user_count from confidence_helper where confidence_no not in
                                (
                                      select round(confidence_no::numeric, 2) from svm
                                )
                                order by 1 desc;")

    @confidenceNoDeepLearning = DeepLearning.find_by_sql("select round(confidence_no::numeric, 2) as confidence_no, count(1) as user_count from deep_learning
                                group by round(confidence_no::numeric, 2)
                                UNION
                                select confidence_no, user_count from confidence_helper where confidence_no not in
                                (
                                      select round(confidence_no::numeric, 2) from deep_learning
                                )
                                order by 1 desc;")
  end


end
