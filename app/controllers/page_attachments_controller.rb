class PageAttachmentsController < ApplicationController
  before_action :find_page_attachment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @page_attachments = PageAttachment.all.order("created_at DESC")
  end

  def show
    
  end

  def new
    @page_attachment = current_user.page_attachments.build
  end

  def create
    @page_attachment = current_user.page_attachments.build(page_attachment_params)
    
    if @page_attachment.save
      redirect_to @page_attachment, notice: "Successfully created new page attachment"  
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @page_attachment.update(page_attachment_params)
      redirect_to @page_attachment, notice: "Page attachment was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @page_attachment.destroy
    redirect_to root_path
  end

  private

  def page_attachment_params
    params.require(:page_attachment).permit(:title, :description)
  end

  def find_page_attachment
    @page_attachment = PageAttachment.find(params[:id])
  end

end
