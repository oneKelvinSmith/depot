require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MadnessesController do

  # This should return the minimal set of attributes required to create a valid
  # Madness. As you add validations to Madness, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "being" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MadnessesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all madnesses as @madnesses" do
      madness = Madness.create! valid_attributes
      get :index, {}, valid_session
      assigns(:madnesses).should eq([madness])
    end
  end

  describe "GET show" do
    it "assigns the requested madness as @madness" do
      madness = Madness.create! valid_attributes
      get :show, {:id => madness.to_param}, valid_session
      assigns(:madness).should eq(madness)
    end
  end

  describe "GET new" do
    it "assigns a new madness as @madness" do
      get :new, {}, valid_session
      assigns(:madness).should be_a_new(Madness)
    end
  end

  describe "GET edit" do
    it "assigns the requested madness as @madness" do
      madness = Madness.create! valid_attributes
      get :edit, {:id => madness.to_param}, valid_session
      assigns(:madness).should eq(madness)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Madness" do
        expect {
          post :create, {:madness => valid_attributes}, valid_session
        }.to change(Madness, :count).by(1)
      end

      it "assigns a newly created madness as @madness" do
        post :create, {:madness => valid_attributes}, valid_session
        assigns(:madness).should be_a(Madness)
        assigns(:madness).should be_persisted
      end

      it "redirects to the created madness" do
        post :create, {:madness => valid_attributes}, valid_session
        response.should redirect_to(Madness.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved madness as @madness" do
        # Trigger the behavior that occurs when invalid params are submitted
        Madness.any_instance.stub(:save).and_return(false)
        post :create, {:madness => { "being" => "invalid value" }}, valid_session
        assigns(:madness).should be_a_new(Madness)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Madness.any_instance.stub(:save).and_return(false)
        post :create, {:madness => { "being" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested madness" do
        madness = Madness.create! valid_attributes
        # Assuming there are no other madnesses in the database, this
        # specifies that the Madness created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Madness.any_instance.should_receive(:update).with({ "being" => "MyString" })
        put :update, {:id => madness.to_param, :madness => { "being" => "MyString" }}, valid_session
      end

      it "assigns the requested madness as @madness" do
        madness = Madness.create! valid_attributes
        put :update, {:id => madness.to_param, :madness => valid_attributes}, valid_session
        assigns(:madness).should eq(madness)
      end

      it "redirects to the madness" do
        madness = Madness.create! valid_attributes
        put :update, {:id => madness.to_param, :madness => valid_attributes}, valid_session
        response.should redirect_to(madness)
      end
    end

    describe "with invalid params" do
      it "assigns the madness as @madness" do
        madness = Madness.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Madness.any_instance.stub(:save).and_return(false)
        put :update, {:id => madness.to_param, :madness => { "being" => "invalid value" }}, valid_session
        assigns(:madness).should eq(madness)
      end

      it "re-renders the 'edit' template" do
        madness = Madness.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Madness.any_instance.stub(:save).and_return(false)
        put :update, {:id => madness.to_param, :madness => { "being" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested madness" do
      madness = Madness.create! valid_attributes
      expect {
        delete :destroy, {:id => madness.to_param}, valid_session
      }.to change(Madness, :count).by(-1)
    end

    it "redirects to the madnesses list" do
      madness = Madness.create! valid_attributes
      delete :destroy, {:id => madness.to_param}, valid_session
      response.should redirect_to(madnesses_url)
    end
  end

end