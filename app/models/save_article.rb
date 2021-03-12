class SaveArticle < ApplicationRecord
  belongs_to :user

  validates_presence_of :url
  validates_presence_of :title

  validates :url, uniqueness: { scope: [:title, :user_id] }
end
