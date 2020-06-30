require 'rails_helper'

describe "show one article" do
  describe "user clicks article link" do
    it "displays given article info" do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")

      visit '/articles'
      click_link article_1.title

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
    end
  end
end
