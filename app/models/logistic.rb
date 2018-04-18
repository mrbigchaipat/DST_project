class Logistic < ApplicationRecord
  self.table_name = "logistic"

  scope :job, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("job").order("job").count()}
  scope :education, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("education").order("education").count()}
  scope :marital, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("marital").order("marital").count()}
  scope :default, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("marital").order("marital").count()}
  scope :housing, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("housing").order("housing").count()}
  scope :loan, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("loan").order("loan").count()}
  scope :contact, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("contact").order("contact").count()}
  scope :month, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("month").order("month").count()}
  scope :day_of_week, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("day_of_week").order("day_of_week").count()}
  scope :campaign, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("campaign").order("campaign").count()}
  scope :pdays, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("pdays").order("pdays").count()}
  scope :previous, -> { where("confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no'").group("previous").order("previous").count()}

  scope :age1, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age <= 20" ).count() }
  scope :age2, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age > 20 and age <= 30" ).count() }
  scope :age3, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age > 30 and age <= 40" ).count() }
  scope :age4, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age > 40 and age <= 50" ).count() }
  scope :age5, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age > 50 and age <= 60" ).count() }
  scope :age6, -> { where( "confidence_no > 0.5 and confidence_no <= 0.6 and y = 'no' and age > 60" ).count() }

  scope :jobNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("job").order("job").count()}
  scope :educationNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("education").order("education").count()}
  scope :maritalNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("marital").order("marital").count()}
  scope :defaultNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("marital").order("marital").count()}
  scope :housingNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("housing").order("housing").count()}
  scope :loanNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("loan").order("loan").count()}
  scope :contactNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("contact").order("contact").count()}
  scope :monthNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("month").order("month").count()}
  scope :day_of_weekNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("day_of_week").order("day_of_week").count()}
  scope :campaignNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("campaign").order("campaign").count()}
  scope :pdaysNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("pdays").order("pdays").count()}
  scope :previousNon, -> { where("confidence_no >= 0.6 and y = 'no'").group("previous").order("previous").count()}

  scope :age1Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age <= 20" ).count() }
  scope :age2Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age > 20 and age <= 30" ).count() }
  scope :age3Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age > 30 and age <= 40" ).count() }
  scope :age4Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age > 40 and age <= 50" ).count() }
  scope :age5Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age > 50 and age <= 60" ).count() }
  scope :age6Non, -> { where( "confidence_no >= 0.6 and y = 'no' and age > 60" ).count() }


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

  scope :numCorrectPredictions, -> {where(" y = prediction_y ").count()}
  scope :numInCorrectPredictions, -> {where(" y <> prediction_y ").count()}
  scope :numTrueNegative, -> {where(" y = 'no' AND prediction_y = 'no' ").count()}
  scope :numTruePositive, -> {where(" y = 'yes' AND prediction_y = 'yes' ").count()}
  scope :numFalseNegative, -> {where(" y = 'yes' AND prediction_y = 'no' ").count()}
  scope :numFalsePositive, -> {where(" y = 'no' AND prediction_y = 'yes' ").count()}

end
