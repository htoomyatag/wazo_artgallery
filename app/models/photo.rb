class Photo < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :artist  
  belongs_to :size


  def self.search(color,size_id,artist_id)
  	where('color = ? OR size_id = ? OR artist_id = ?', "#{color}", "#{size_id}", "#{artist_id}")
  end


end
