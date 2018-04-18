class Dataset < ApplicationRecord
  self.table_name = "dataset"
  scope :age1, -> { where( "age <= 20" ).count() }
  scope :age2, -> { where( "age > 20 and age <= 30" ).count() }
  scope :age3, -> { where( "age > 30 and age <= 40" ).count() }
  scope :age4, -> { where( "age > 40 and age <= 50" ).count() }
  scope :age5, -> { where( "age > 50 and age <= 60" ).count() }
  scope :age6, -> { where( "age > 60" ).count() }

  scope :job, -> { all.group("job").order("job").count()}
  scope :education, -> { all.group("education").order("education").count()}
  scope :marital, -> { all.group("marital").order("marital").count()}
  scope :default, -> { all.group("marital").order("marital").count()}
  scope :housing, -> { all.group("housing").order("housing").count()}
  scope :loan, -> { all.group("loan").order("loan").count()}
  scope :contact, -> { all.group("contact").order("contact").count()}
  scope :month, -> { all.group("month").order("month").count()}
  scope :day_of_week, -> { all.group("day_of_week").order("day_of_week").count()}
  scope :duration, -> { all.group("duration").order("duration").count()}
  scope :campaign, -> { all.group("campaign").order("campaign").count()}
  scope :pdays, -> { all.group("pdays").order("pdays").count()}
  scope :previous, -> { all.group("previous").order("previous").count()}

end
