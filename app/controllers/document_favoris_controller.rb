class DocumentFavorisController < ApplicationController
  before_action :set_document_favori, only: [:show, :edit, :update, :destroy]

  # GET /document_favoris
  # GET /document_favoris.json
  def index
    @document_favoris = DocumentFavori.all
  end

  # GET /document_favoris/1
  # GET /document_favoris/1.json
  def show
  end

  # GET /document_favoris/new
  def new
    @document_favori = DocumentFavori.new
  end

  # GET /document_favoris/1/edit
  def edit
  end

  # POST /document_favoris
  # POST /document_favoris.json
  def create
    @document_favori = DocumentFavori.new(document_favori_params)


      if @document_favori.save
        redirect_to welcome_for_documents_path
        flash[:success] = "Ce document a été ajouté avec succès à la liste des Favoris"
      else
        flash[:success] = "Ce document n'est pas ajouté à la liste des Favoris"
      end

  end

  # PATCH/PUT /document_favoris/1
  # PATCH/PUT /document_favoris/1.json
  def update
    respond_to do |format|
      if @document_favori.update(document_favori_params)
        format.html { redirect_to @document_favori, notice: 'Document favori was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_favori }
      else
        format.html { render :edit }
        format.json { render json: @document_favori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_favoris/1
  # DELETE /document_favoris/1.json
  def destroy
    @document_favori.destroy
    respond_to do |format|
      format.html { redirect_to document_favoris_url, notice: 'Document favori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_favori
      @document_favori = DocumentFavori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_favori_params
      params.require(:document_favori).permit(:user_id, :document_id)
    end
end
