class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def home
    @art_paints = Paint.where("our_artwork ='YES'").paginate(:page => params[:page], :per_page => 4)
    @new_paints = Paint.where("new_arrival ='YES'").paginate(:page => params[:page], :per_page => 4)
    @photo = Photo.order("created_at desc").first(8)
    @order = Order.new
    @paint = Paint.all
    @paints = Paint.all
    @artists = Artist.all
  end

  def artist_artwork
     @artist_name = Artist.where("id = ? ", params[:artist_id]).pluck(:name)
     @paints = Paint.where("artist_id = ? ", params[:artist_id])
     @order = Order.new
  end

  def contact
    @home = Home.new
  end

  def art_gallery
    @order = Order.new
    @paint = Paint.all
    @paint_type = PaintType.all    
    @paint_colors = Paint.all
    @artist = Artist.where("painter_type='Painter'")
    @size = Size.all 
    if !params[:paint_type_id].nil?
    @paints = Paint.search(params[:paint_type_id],params[:size_id],params[:artist_id])
    else
    @paints = Paint.all
  end
  end


  def search
    @order = Order.new
    @paint = Paint.all
    @paint_type = PaintType.all    
    @paint_colors = Paint.all
    @size = Size.all 
    @paints = Paint.search(params[:paint_type_id],params[:size_id],params[:artist_id])
  end

  def search_photo
    @photo_colors = Photo.all
    @artist = Artist.all
    @size = Size.all 
    @photo = Photo.all
    @photos = Photo.search(params[:color],params[:size_id],params[:artist_id])
    
  end

  def photo_gallery
    @photo_colors = Photo.all
    @artist = Artist.where("painter_type='Photographer'")
    @size = Size.all 
    @photo = Photo.all
    @photos = Photo.search(params[:color],params[:size_id],params[:artist_id])
  end

  def exhibition
    @exhibition = Exhibition.all
  end

  def terms_and_conditions

  end
  
  def artist_profile
    @artist = Artist.find(params[:id])
  end

  def index
    @homes = Home.all
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
 def create
    @home = Home.new(params[:home])
    @home.request = request
    if @home.deliver
      flash.now[:error] = nil
      flash[:notice] = 'Thank you for your message!'
      redirect_to contact_path
    else
      flash[:error] = 'Cannot send message.'
      redirect_to contact_path
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params[:home]
    end
end
