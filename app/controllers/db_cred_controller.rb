class DbCredController < ApplicationController
    def index
        @db_credentials = DbCred.all
    end

    def new
        @db_credential = DbCred.new
    end

    def show
        @db_credential = DbCred.find(params[:id])
    end

    def create
        @db_credential = DbCred.new

        if @db_credential.save
            redirect_to @db_credential
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit

    end

    def update

    end

    def destroy

    end
end
