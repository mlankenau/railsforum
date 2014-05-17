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

describe Forum::ThreadsController do

  # This should return the minimal set of attributes required to create a valid
  # Forum::Thread. As you add validations to Forum::Thread, be sure to
  # adjust the attributes here as well.
  let(:forum) {Forum::Forum.create(name: 'test')}

  let(:valid_attributes) { { "subject" => "Tralala", "forum_id" => forum.id } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Forum::ThreadsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all forum_threads as @forum_threads" do
      thread = Forum::Thread.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:forum_threads)).to eq([thread])
    end
  end

  describe "GET show" do
    it "assigns the requested forum_thread as @forum_thread" do
      thread = Forum::Thread.create! valid_attributes
      get :show, {:id => thread.to_param}, valid_session
      expect(assigns(:forum_thread)).to eq(thread)
    end
  end

  describe "GET new" do
    it "assigns a new forum_thread as @forum_thread" do
      get :new, {}, valid_session
      expect(assigns(:forum_thread)).to be_a_new(Forum::Thread)
    end
  end

  describe "GET edit" do
    it "assigns the requested forum_thread as @forum_thread" do
      thread = Forum::Thread.create! valid_attributes
      get :edit, {:id => thread.to_param}, valid_session
      expect(assigns(:forum_thread)).to eq(thread)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Forum::Thread" do
        expect {
          post :create, {:forum_thread => valid_attributes}, valid_session
        }.to change(Forum::Thread, :count).by(1)
      end

      it "assigns a newly created forum_thread as @forum_thread" do
        post :create, {:forum_thread => valid_attributes}, valid_session
        expect(assigns(:forum_thread)).to be_a(Forum::Thread)
        expect(assigns(:forum_thread)).to be_persisted
      end

      it "redirects to the created forum_thread" do
        post :create, {:forum_thread => valid_attributes}, valid_session
        expect(response).to redirect_to(Forum::Thread.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved forum_thread as @forum_thread" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Forum::Thread).to receive(:save).and_return(false)
        post :create, {:forum_thread => { "creator" => "invalid value" }}, valid_session
        expect(assigns(:forum_thread)).to be_a_new(Forum::Thread)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Forum::Thread).to receive(:save).and_return(false)
        post :create, {:forum_thread => { "creator" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested forum_thread" do
        thread = Forum::Thread.create! valid_attributes
        # Assuming there are no other forum_threads in the database, this
        # specifies that the Forum::Thread created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Forum::Thread).to receive(:update).with({ "creator" => "1" })
        put :update, {:id => thread.to_param, :forum_thread => { "creator" => "1" }}, valid_session
      end

      it "assigns the requested forum_thread as @forum_thread" do
        thread = Forum::Thread.create! valid_attributes
        put :update, {:id => thread.to_param, :forum_thread => valid_attributes}, valid_session
        expect(assigns(:forum_thread)).to eq(thread)
      end

      it "redirects to the forum_thread" do
        thread = Forum::Thread.create! valid_attributes
        put :update, {:id => thread.to_param, :forum_thread => valid_attributes}, valid_session
        expect(response).to redirect_to(thread)
      end
    end

    describe "with invalid params" do
      it "assigns the forum_thread as @forum_thread" do
        thread = Forum::Thread.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Forum::Thread).to receive(:save).and_return(false)
        put :update, {:id => thread.to_param, :forum_thread => { "creator" => "invalid value" }}, valid_session
        expect(assigns(:forum_thread)).to eq(thread)
      end

      it "re-renders the 'edit' template" do
        thread = Forum::Thread.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Forum::Thread).to receive(:save).and_return(false)
        put :update, {:id => thread.to_param, :forum_thread => { "creator" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested forum_thread" do
      thread = Forum::Thread.create! valid_attributes
      expect {
        delete :destroy, {:id => thread.to_param}, valid_session
      }.to change(Forum::Thread, :count).by(-1)
    end

    it "redirects to the forum_threads list" do
      thread = Forum::Thread.create! valid_attributes
      delete :destroy, {:id => thread.to_param}, valid_session
      expect(response).to redirect_to(forum_threads_url)
    end
  end

end
