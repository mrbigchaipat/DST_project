class Logistic < ApplicationRecord
  self.table_name = "logistic"

  scope :correctPredictNoWithLowConf, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'") }
  scope :correctPredictNoWithMediumConf, -> { where("confidence_no > 0.6 and confidence_no <= 0.7 and y = 'no'") }
  scope :correctPredictNoWithHighConf, -> { where("confidence_no > 0.7 and confidence_no <= 0.8 and y = 'no'") }
  scope :correctPredictNoWithVeryHighConf, -> { where("confidence_no > 0.8 and y = 'no'") }


  scope :numOfCorrectPredictNoWithLowConf, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").count() }
  scope :numOfCorrectPredictNoWithMediumConf, -> { where("confidence_no > 0.6 and confidence_no <= 0.7 and y = 'no'").count() }
  scope :numOfCorrectPredictNoWithHighConf, -> { where("confidence_no > 0.7 and confidence_no <= 0.8 and y = 'no'").count() }
  scope :numOfCorrectPredictNoWithVeryHighConf, -> { where("confidence_no > 0.8 and y = 'no'").count() }


  scope :numberOfAllCust, -> { all.count() }
  scope :numberOfYesClass, -> { where(" y = 'yes'").count() }
  scope :numberOfNoClass, -> { where(" y = 'no'").count() }

end
