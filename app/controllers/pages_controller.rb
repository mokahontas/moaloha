class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end
  def firsthours
    respond_to do |format|
      format.html
      format.js
    end
  end
  def missingperson
    respond_to do |format|
      format.html
      format.js
    end
  end
  # GET /pages/new
  def new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create

  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update

  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
    end
end
