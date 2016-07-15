class MissingPeopleController < ApplicationController
  before_action :set_missing_person, only: [:show, :edit, :update, :destroy]

  def index
    @name = params[:name]
    @sex = params[:sex]
    @islands = params[:islands]
    @first_name = params[:first_name]
    @last_name = params[:last_name]

    @missing_people = MissingPerson.where("missing_people.date IS NOT NULL").order(date: :desc).paginate(:page => params[:page], :per_page => 10)
    if params[:name].present?
      @missing_people = @missing_people.where('first_name LIKE ? or last_name like ?', "%#{params[:name]}%", "%#{params[:name]}%")
    end
    if params[:sex].present?
      @missing_people = @missing_people.where :sex => params[:sex]
    end
    if params[:islands].present?
      @missing_people = @missing_people.where :island => params[:islands]
    end
    @hash = Gmaps4rails.build_markers(@missing_people) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end


  def show
    @missing_person = MissingPerson.find params[:id]
    # Impression.create(ip_address: request.remote_ip, missing_person_id: @missing_person)
    @hash = Gmaps4rails.build_markers(@missing_person) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
       if MissingPerson.exists?( id: params[:id].to_i-1)
         @prev = MissingPerson.find params[:id].to_i - 1
       else
         @prev = @missing_person
       end
      if MissingPerson.exists?( id: params[:id].to_i+1)
           @next = MissingPerson.find params[:id].to_i + 1
       else
         @next = @missing_person
       end
     end
   end


  def edit
    if @current_user.present? && @current_user.admin == true
      @missing_person = MissingPerson.find params[:id]

      if MissingPerson.exists?( id: params[:id].to_i-1)
        @prev = MissingPerson.find params[:id].to_i - 1
      else
        @prev = @missing_person
      end
      if MissingPerson.exists?( id: params[:id].to_i+1)
            @next = MissingPerson.find params[:id].to_i + 1
      else
          @next = @missing_person
      end
    else
      redirect_to root_path
    end
  end

  def update
    if @current_user.present? && @current_user.admin == true
    respond_to do |format|
      if @missing_person.update(missing_person_params)
        format.html { redirect_to missing_person_path, notice: 'Missing person was successfully updated.' }
        format.json { render :show, status: :ok, location: @missing_person }
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
  @missing_person = MissingPerson.find params[:id]
  @missing_person.destroy

  @missing_people_without_date = MissingPerson.find params[:id]
  @missing_people_without_date.destroy

  respond_to do |format|
    format.html { redirect_to missing_people_url, notice: 'Missing person was successfully destroyed.' }
    format.json { head :no_content }
  end
end

  private
    # def set_ip
    #   @ip = request.remote_ip
    # end
    #
      # def set_impression
      #   @impression = Impression.new
      # end

      def impressions
        @impressions = Impression.find(params[:id])
      end

    # Use callbacks to share common setup or constraints between actions.
    def set_missing_person
      @missing_person = MissingPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missing_person_params
      params.require(:missing_person).permit(:first_name, :last_name, :sex, :location, :island, :height, :weight, :image, :eye_color, :information, :middle_name, :nickname, :date, :longitude, :latitude, :ethnicity, :age, :circumstances)
    end
end
