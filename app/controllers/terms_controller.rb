# Term Controller
class TermsController < ApplicationController
  before_action :set_term, only: [:show, :edit, :update, :destroy]

  def index
    @terms = Term.all
  end

  def show
  end

  def new
    @term = Term.new
  end

  def edit
  end

  def create
    @term = Term.new(term_params)
    if @term.save
      flash[:notice] = "Term successfully created"
      redirect_to @term
    else
      render 'new'
    end
  end

  def update
    if @term.update_attributes(term_params)
      flash[:success] = "Term updated"
      redirect_to @term
    else
      render 'edit'
    end
  end

  def destroy
    @term.destroy

    redirect_to(root_url, notice: "Term deleted!")

  end

  private

    def set_term
      @term = Term.find(params[:id])
    end

    def term_params
      params.require(:term).permit(:name)
    end

end
