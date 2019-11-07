class Author
  attr_accessor :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(pst)
    self.posts << pst
    pst.author = self
    
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    pst = Post.new(title)
    self.posts << pst
    pst.author = self
    
    @@post_count +=1
  end
  
  def self.post_count
    @@post_count
  end
    
end