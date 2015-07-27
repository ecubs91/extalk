class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]
  
  respond_to :html

  def index
    @members = Member.all
    respond_with(@members)
  end

  def show
    respond_with(@member)
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    @member.user_id = current_user.id
    @member.save
    respond_with(@member)
  end
   
  def update
    @member.update(member_params)
    respond_with(@member)
  end

  def destroy
    @member.destroy
    respond_with(@member)
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:language_id, :wish_lang, :country, :city, :interest, :weixin, :skype)
    end
   
    def check_user
      if current_user != @listing.user
        redirect_to root_url, alert: "Sorry, this listing belongs to someone else"
      end
    end
end
