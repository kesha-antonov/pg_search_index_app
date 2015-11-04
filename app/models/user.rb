# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  validates :name,
    presence: true

  has_many :articles, dependent: :destroy
end
