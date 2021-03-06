require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/wather_records", type: :request do

	describe "GET /api/catgories records temp" do
		it "renders a successful response" do
			get wather_records_url
			expect(response).to be_successful
		end
	end

	describe "GET /api/index order by created_at: :asc" do
		it "renders a successful response" do
			get wather_records_url(sort_by: :created_at, order: :asc)
			expect(response).to be_successful
		end
	end
	
	describe "GET /api/index order by created_at: :desc" do
		it "renders a successful response" do
			get wather_records_url(sort_by: :created_at, order: :desc)
			expect(response).to be_successful
		end
	end

	describe "GET /api/index order by temp asc" do
		it "renders a successful response" do
			get wather_records_url(sort_by: :temp, order: :asc)
			expect(response).to be_successful
		end
	end
	
	describe "GET /api/index order by temp desc" do
		it "renders a successful response" do
			get wather_records_url(sort_by: :temp, order: :desc)
			expect(response).to be_successful
		end
	end

	describe "GET /api/index get lower record" do
		it "renders a successful response" do
			get wather_records_url(find: :lower)
			expect(response).to be_successful
		end
	end

	describe "GET /api/index get highest record" do
		it "renders a successful response" do
			get wather_records_url(find: :highest)
			expect(response).to be_successful
		end
	end

end