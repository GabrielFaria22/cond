module Api
	module V1
		class PeopleController < ApplicationController

      def index
				people = PersonSerializer.order('created_at DESC');
				render json: {status: '200', message:'Pessoas carregadas', data:people},status: :ok
			end
		end
	end
end