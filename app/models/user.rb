class User < UserBase
  include Share::UserMethods
  include Feeling::UserMethods
end
