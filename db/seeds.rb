# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



admin = Admin.create([

{user_name: "htoomyataung", email: "htoomyataung@gmail.com", password: "12345678", password_confirmation: "12345678"},
{user_name: "theldarlykhin", email: "theldarlykhin@gmail.com", password: "12345678", password_confirmation: "12345678"},
{user_name: "galleryadmin", email: "admin@wazogallery.com", password: "12345678", password_confirmation: "12345678"},

])




paint_types = PaintType.create([

{type_name:"Oil"},
{type_name:"Pastel"},
{type_name:"Acrylic"},
{type_name:"Watercolor"},
{type_name:"Ink"},
{type_name:"Hot wax"},
{type_name:"Fresco"},
{type_name:"Gouache"},
{type_name:"Enamel"},
{type_name:"Spray paint"},
{type_name:"Tempera"},
{type_name:"Water miscible oil paint"}


])


sizes = Size.create([

{size:"11 x 14"},
{size:"20 x 24"},
{size:"12 x 16"},
{size:"18 x 24"},
{size:"30 x 40"},
{size:"36 x 48"},
{size:"16 x 20"},
{size:"24 x 30"},
{size:"48 x 60"},
{size:"24 x 36"},
{size:"48 x 72"}

])



paints = Paint.create([

# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {our_artwork:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {our_artwork:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},


# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {new_arrival:"YES", artist_id:"1", title:"title", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {new_arrival:"YES", artist_id:"2", title:"title", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},


# {artist_id:"1", title:"title1", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {artist_id:"2", title:"title2", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"},
# {artist_id:"1", title:"title11", color:"red", paint_type_id:"1",size_id:"1", published_date:"12June1993", price:"6000 USD"},
# {artist_id:"2", title:"title22", color:"blue", paint_type_id:"2", size_id:"2", published_date:"12August2003", price:"4000 USD"}






]) 	 
			

artists = Artist.create([

{name:"Htoo Myat Aung", date_of_birth:"12June1993", desc:"Htoo Myat Aung is htoo myat ag balh balh...", painter_type: "Painter"},
{name:"Du Duu Dha", date_of_birth:"12June1963", desc:"Dy DY is dah dah balh balh...", painter_type:"Painter"},



]) 	 
	 
	
