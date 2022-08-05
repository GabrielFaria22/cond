module Api
	module V1
		class ApartmentsController < ApplicationController

      def index
				apartments = Apartment.order('number ASC')
				render json: {status: '200', message:'Apartamentos carregados', data:apartments},status: :ok
			end
		end
	end
end