class Profile < ActiveRecord::Base
  belongs_to :user

  validates :first_name, presence: true, if: 'last_name.nil?'
  validates :last_name, presence: true, if: 'first_name.nil?'

  validate :gender_valid
  validate :sue_valid

  def gender_valid
    if gender != 'male' && gender != 'female'
      errors.add(:gender, 'invalid gender')
    end
  end

  def sue_valid
    if first_name == 'Sue' && gender == 'male'
      errors.add(:gender, 'invalid gender')
    end
  end

  def self.get_all_profiles(min, max)
    Profile.where(:birth_year => min..max).order(birth_year: :asc)
  end
end
