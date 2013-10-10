class Article < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings
  
  validates_presence_of :title, :body
  validates_uniqueness_of :title

  validates_presence_of :user_id
  validates_numericality_of :user_id
  belongs_to :user
  
  attr_writer :tag_names
  after_save :assign_tags
  
  scope :published, lambda {{:conditions => ['published = ?', true]}}
  scope :ordered, lambda {{:order => "Created_at DESC" }}

  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end
  
  
  private
  
    def assign_tags
      if @tag_names
        self.tags = @tag_names.split(/\,/).map do |name|
          name.rstrip! # delete all spaces to the right from tag
          name.lstrip! # delete all spaces to the left from tag
          Tag.find_or_create_by_name(name)
        end
      end
    end  
  
end