# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string           default("")
#  text       :text             default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_full_text, against: [
    :text
  ], associated_against: {
    user: :name
  }, using: {
    tsearch: { prefix: true, any_word: false }
  }

  belongs_to :user

  validates :name,
            :text,
    presence: true
end
