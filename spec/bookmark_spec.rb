
require 'bookmark'

describe Bookmark do

  # subject(:bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all saved bookmarks' do
      test_connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      test_connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
      test_connection.exec("INSERT INTO bookmarks (url) VALUES('www.makersacademy.com');")
      test_connection.exec("INSERT INTO bookmarks (url) VALUES('www.twitter.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.makersacademy.com")
      expect(bookmarks).to include("www.twitter.com")

    end
  end
end
