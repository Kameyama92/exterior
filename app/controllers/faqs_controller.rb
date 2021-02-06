class FaqsController < ApplicationController

  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def faq_params
    params.require(:faq).permit(:f_title, :f_text, :image).merge(user_id: current_user.id)
  end
  
end
