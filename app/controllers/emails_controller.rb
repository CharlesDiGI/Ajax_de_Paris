class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    @emails=Email.all # needed for sidebar, probably better to use a cell for this
    @email.toggle!(:read)
    # @email.update_attribute(:read, [true])
        respond_to do |format|
        format.html # show.html.erb
        format.js {render layout: false}
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @emails = Email.all
    Email.find(params[:id].to_i).destroy
    respond_to do |format|
      format.js {render layout: false}
    end
  end

end
