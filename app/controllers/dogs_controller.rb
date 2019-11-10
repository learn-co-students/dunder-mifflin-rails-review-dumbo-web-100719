class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit]
    def index
        @dogs = Dog.all
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def dogs_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    def set_dog
        @dog = Dog.find(params[:id])
    end
end
