class Schedule < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {maximum: 500}

  validate :verify_date
  private
    def verify_date
      return if start.blank? || finish.blank?
      if finish < start
          errors.add(:finish, "は開始日以降の日付にしてください")
      end
    end
end