class Story < ActiveRecord::Base
  
    belongs_to :sport
    has_many :social_tags, :through => :story_tags
    has_many :story_tags
    has_many :comments
    
    named_scope :accepted, :conditions=> {:accepted=> true, :published=> nil}, :order=> "published_at DESC"
    named_scope :published, :conditions=> {:accepted=> true, :published=>true} , :order=> "published_at DESC"
    
   
    


end
