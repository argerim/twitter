class User
  include MongoMapper::Document
  key :screen_name, String
  key :text, String
end

