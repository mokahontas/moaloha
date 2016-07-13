class MissingPeopleController < ApplicationController
  before_action :set_missing_person, only: [:show, :edit, :update, :destroy]

  # GET /missing_people
  # GET /missing_people.json
  def index
    @missing_people = MissingPerson.where("missing_people.date IS NOT NULL").order(date: :desc).paginate(:page => params[:page], :per_page => 10)
    @hash = Gmaps4rails.build_markers(@missing_people) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end
  

  def search
    @missing_people = MissingPerson.search(["name LIKE ?","%#{params[:search]}%"])
  end

  # GET /missing_people/1
  # GET /missing_people/1.json
  def show
    @missing_person = MissingPerson.find params[:id]
    @hash = Gmaps4rails.build_markers(@missing_person) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  # GET /missing_people/new
  def new
    if @current_user.present? && @current_user.admin == true

    @missing_person = MissingPerson.new
    end
  end

  # GET /missing_people/1/edit
  def edit
    if @current_user.present? && @current_user.admin == true
      @missing_person = MissingPerson.find params[:id]
    end
  end

  # POST /missing_people
  # POST /missing_people.json
  def create
    if @current_user.present? && @current_user.admin == true


  end
end

  # PATCH/PUT /missing_people/1
  # PATCH/PUT /missing_people/1.json
  def update
    if @current_user.present? && @current_user.admin == true

    respond_to do |format|
      if @missing_person.update(missing_person_params)
        format.html { redirect_to fixdata_path, notice: 'Missing person was successfully updated.' }
        format.json { render :fixdata, status: :ok, location: @missing_person }
      else
        format.html { render :edit }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # DELETE /missing_people/1
  # DELETE /missing_people/1.json
  def destroy
    if @current_user.present? && @current_user.admin == true

    @missing_person.destroy
    respond_to do |format|
      format.html { redirect_to missing_people_url, notice: 'Missing person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missing_person
      @missing_person = MissingPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missing_person_params
      params.require(:missing_person).permit(:first_name, :last_name, :sex, :location, :island, :height, :weight, :image, :eye_color, :information, :middle_name, :nickname, :date, :longitude, :latitude, :ethnicity, :age, :circumstances)
    end
end
