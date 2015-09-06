class Paint < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  belongs_to :artist
  belongs_to :size
  belongs_to :paint_type

  before_save :generate_item_code


  	OUR_ARTWORK = ["YES","NO"]
  	NEW_ARRIVAL = ["YES","NO"]

	def self.search(paint_type_id,size_id,artist_id)
	  where('paint_type_id = ? AND size_id = ? AND artist_id = ?', "#{paint_type_id}", "#{size_id}", "#{artist_id}")
	end


	def generate_item_code
	

		number = Paint.maximum(:id).to_i + 1
	
		if
	   	 number.to_s.length == 1
			zero = "000"
	   		self.item_code = "CC-" + zero + number.to_s
	   	elsif
	   	 number.to_s.length == 2
			zero = "00"
	   		self.item_code = "CC-" + zero + number.to_s
	   	elsif
	   	 number.to_s.length == 3
			zero = "0"
	   		self.item_code = "CC-" + zero + number.to_s
	   	elsif
	   		number.to_s.length == 4
			number = Paint.last.id + 1
	   		self.item_code = "CC-" + number.to_s
	   	end
	end


  
end
