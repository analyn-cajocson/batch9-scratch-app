require 'rails_helper'

RSpec.describe Article, type: :model do

  context 'validations' do
    it 'is not valid without name' do
      article = Article.new
      article.name = nil
      article.body = 'hello Monday'

      expect(article).to_not be_valid
      expect(article.errors).to be_present
      expect(article.errors.to_h.keys).to include(:name)
    end
  end
end
