class User < ApplicationRecord
  has_one_attached :image
  has_many :ages, dependent: :destroy

  with_options presence: true do
    validates :name
    validates :birth
    validates :image
  end

  # 年齢
  def tens_age
    d1 = self.birth.strftime("%Y%m%d").to_i
    d2 = Date.today.strftime("%Y%m%d").to_i
    today_age = (d2-d1)/10000
    tens = (today_age/10).to_i
  end
end
