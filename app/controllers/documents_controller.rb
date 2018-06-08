class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy , :upvote , :downvote]
  before_action :authenticate_admin_user!, only: [:het_el_kazi]

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    if user_signed_in?
      @comment = Comment.new
      @comment.create(user_id: current_user.id , document_id: @document.id)
    end
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)
    # @document = NewRegistrationService.create(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
        # flash.alert = NewRegistrationService.create_fail_error_message(@document)
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @document.upvote_by current_user
    redirect_back(fallback_location: root_path)
    flash[:success] = "Ajouter au favoris!"
    DocumentFavori.create(user_id: current_user.id , document_id: @document.id)
  end


  def downvote
    @document.downvote_by current_user
    redirect_back(fallback_location: root_path)
    flash[:success] = "Supprimer des favoris!"
    DocumentFavori.where(user_id: current_user.id , document_id: @document.id).count
  end


  def welcome_for_documents

  end

  def het_el_kazi   
    
    # New User declaration
    @user = User.new 
    # New document declaration
    @document = Document.new

    # List of users
    @users = User.all
    # List of documents
    @documents = Document.all

    # Search users by phone number
    if params[:search]
      @users = User.where("users.phone_number LIKE ? ", "#{params[:search]}" )  
    else
      @users = User.all
    end

    # Search documents by section
    if params[:search_document]
      @documents = Document.where("documents.document_course LIKE ? ", "#{params[:search_document]}" )  
    else
      @documents = Document.all
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:document_key, :document_section, :document_level,
       :document_course, :document_type, :document_subject, :document_year, :document_data,
       :pdf_file_enonce , :pdf_file_corrige , :enonce_data , :corrige_data)
    end
end
