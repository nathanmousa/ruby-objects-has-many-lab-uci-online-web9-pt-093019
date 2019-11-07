class Author
  attr_accessor :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|post| post.artist == self}
  end
  
  def add_post(pst)
    self.posts << pst
    pst.author = self
    
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << pst
    post.author = self
    
    @@post_count +=1
  end
  
  def self.post_count
    
  end
    
end