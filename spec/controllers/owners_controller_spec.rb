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

describe OwnersController do

  # This should return the minimal set of attributes required to create a valid
  # Owner. As you add validations to Owner, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:firstname => "Srinjoy", :lastname => "Smith", :email => "srinjoy@srinjoy.com", :phone => "97444540123", :city => "Doha", :country => "QA"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OwnersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all owners as @owners" do
      owner = Owner.create! valid_attributes
      get :index, {}, valid_session
      assigns(:owners).should eq([owner])
    end
  end

  describe "GET show" do
    it "assigns the requested owner as @owner" do
      owner = Owner.create! valid_attributes
      get :show, {:id => owner.to_param}, valid_session
      assigns(:owner).should eq(owner)
    end
  end

  describe "GET new" do
    it "assigns a new owner as @owner" do
      get :new, {}, valid_session
      assigns(:owner).should be_a_new(Owner)
    end
  end

  describe "GET edit" do
    it "assigns the requested owner as @owner" do
      owner = Owner.create! valid_attributes
      get :edit, {:id => owner.to_param}, valid_session
      assigns(:owner).should eq(owner)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Owner" do
        expect {
          post :create, {:owner => valid_attributes}, valid_session
        }.to change(Owner, :count).by(1)
      end

      it "assigns a newly created owner as @owner" do
        post :create, {:owner => valid_attributes}, valid_session
        assigns(:owner).should be_a(Owner)
        assigns(:owner).should be_persisted
      end

      it "redirects to the created owner" do
        post :create, {:owner => valid_attributes}, valid_session
        response.should redirect_to(Owner.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved owner as @owner" do
        # Trigger the behavior that occurs when invalid params are submitted
        Owner.any_instance.stub(:save).and_return(false)
        post :create, {:owner => {}}, valid_session
        assigns(:owner).should be_a_new(Owner)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Owner.any_instance.stub(:save).and_return(false)
        post :create, {:owner => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested owner" do
        owner = Owner.create! valid_attributes
        # Assuming there are no other owners in the database, this
        # specifies that the Owner created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Owner.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => owner.to_param, :owner => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested owner as @owner" do
        owner = Owner.create! valid_attributes
        put :update, {:id => owner.to_param, :owner => valid_attributes}, valid_session
        assigns(:owner).should eq(owner)
      end

      it "redirects to the owner" do
        owner = Owner.create! valid_attributes
        put :update, {:id => owner.to_param, :owner => valid_attributes}, valid_session
        response.should redirect_to(owner)
      end
    end

    describe "with invalid params" do
      it "assigns the owner as @owner" do
        owner = Owner.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Owner.any_instance.stub(:save).and_return(false)
        put :update, {:id => owner.to_param, :owner => {}}, valid_session
        assigns(:owner).should eq(owner)
      end

      it "re-renders the 'edit' template" do
        owner = Owner.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Owner.any_instance.stub(:save).and_return(false)
        put :update, {:id => owner.to_param, :owner => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested owner" do
      owner = Owner.create! valid_attributes
      expect {
        delete :destroy, {:id => owner.to_param}, valid_session
      }.to change(Owner, :count).by(-1)
    end

    it "redirects to the owners list" do
      owner = Owner.create! valid_attributes
      delete :destroy, {:id => owner.to_param}, valid_session
      response.should redirect_to(owners_url)
    end
  end

end
