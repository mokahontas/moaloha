class AdminsController < ApplicationController
  before_filter :authenticate
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
    @missing_people = MissingPerson.all.paginate(:page => params[:page], :per_page => 25)
  end
  def all_content
    @missing_people = MissingPerson.all.paginate(:page => params[:page], :per_page => 25)
    respond_to do |format|
      format.html
      format.js
    end
  end
  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  # GET /admins/new
  def new
    @admin = Admin.new
    @missing_person = MissingPerson.new
  end
  def new_mp
    @missing_person = MissingPerson.new

    respond_to do |format|
      if @missing_person.save
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully created.' }
        format.json { render :show, status: :created, location: @missing_person }
        format.js

      else
        format.html { render :new }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
        format.js

      end
    end
  end

  def fixdata
    @missing_people_without_date = MissingPerson.where( date: nil ).paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html
      format.js
    end
  end
  # GET /admins/1/edit
  def edit
    @missing_person = MissingPerson.find params[:id]
  end

  # POST /admins
  # POST /admins.json
  def create
    @missing_person = MissingPerson.new(missing_person_params)

    respond_to do |format|
      if @missing_person.save
        format.html { redirect_to missing_person_path, notice: 'Missing person was successfully created.' }
        format.json { render :show, status: :created, location: @missing_person }
        format.js

      else
        format.html { render :new }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
        format.js

      end
    end
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
        format.js

      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
        format.js

      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
        format.js

      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
        format.js

      end
    end
    respond_to do |format|
      if @missing_person.update(missing_person_params)
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully updated.' }
        format.json { render :show, status: :ok, location: @missing_person }
        format.js

      else
        format.html { render :edit }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
        format.js

      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
      format.js

    end
    @missing_person.destroy
    respond_to do |format|
      format.html { redirect_to missing_people_url, notice: 'Missing person was successfully destroyed.' }
      format.json { head :no_content }
      format.js

    end

  end

  private
    

    def fetch_admin
      if @current_user.admin
        @admin = User.find( @current_user.id )
      else
        redirect_to pages_path
      end
    end
    def set_missing_person
      @missing_person = MissingPerson.find(params[:id])
      @missing_people = MissingPerson.all
    end
    def missing_person_params
      params.require(:missing_person).permit(:first_name, :last_name, :sex, :location, :island, :height, :weight, :image, :eye_color, :information, :middle_name, :nickname, :date, :longitude, :latitude, :ethnicity, :age, :circumstances)
    end
    def set_impression
      @impression = Impression.find(params[:id])
    end
    def admin_params
      params.fetch(:admin, {})
    end
    def authenticate
    redirect_to login_path unless session[:user_id].present? && @current_user.admin?
    end
end
