require 'rails_helper'

RSpec.describe SaveArticle, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:url) }
end
