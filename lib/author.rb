require "pry"
class Author 
  attr_accessor :name, :posts  
  
  def initialize(name) 
    @name = name
    @posts = []
  end 
  
  def add_post(post)
    #binding.pry
    post.author = self
    self.posts << post unless self.posts.include?(post)
  end 
  
  def add_post_by_title(post)
    Post.new(post).tap{|post| add_post(post)}
  end 
end 