class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.find_or_create_by(:user_id => current_user.id)
    @profile.articles.build
    @profile.careers.build
    redirect_to edit_profile_url(@profile)
  end

  # GET /profiles/1/edit
  def edit
    
  end

  # POST /profiles
  # POST /profiles.json
  # def create
  #   @profile = Profile.new(profile_params)

  #   respond_to do |format|
  #     if @profile.save
  #       format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
  #       format.json { render :show, status: :created, location: @profile }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @profile.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
        @profiles = Profile.where(:is_enable => true)
        profiles_json = render_to_string(template:'profiles/index.json.jbuilder')
        ProfilesHelper.upload_to_s3(profiles_json)
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  # def destroy
  #   @profile.destroy
  #   respond_to do |format|
  #     format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:name, :birthday, :address, :is_enable, :thumbnail, :header_image, :introduction, :user_id, articles_attributes:  [:profile_id, :user_id, :title, :type, :image, :text, :url, :date, :_destroy, :id ], careers_attributes:[:date, :text, :user_id, :profile_id, :_destroy, :id ]
      )
    end
end


