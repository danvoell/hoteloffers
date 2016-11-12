require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { dealphotourl: @offer.dealphotourl, hotelchain: @offer.hotelchain, hotelcity: @offer.hotelcity, hotelname: @offer.hotelname, hotelstate: @offer.hotelstate, offerbegindate: @offer.offerbegindate, offerdetails: @offer.offerdetails, offerenddate: @offer.offerenddate, offertext: @offer.offertext, offerurl: @offer.offerurl, promocode: @offer.promocode, roomcategory: @offer.roomcategory, travelbegindate: @offer.travelbegindate, travelenddate: @offer.travelenddate }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    patch :update, id: @offer, offer: { dealphotourl: @offer.dealphotourl, hotelchain: @offer.hotelchain, hotelcity: @offer.hotelcity, hotelname: @offer.hotelname, hotelstate: @offer.hotelstate, offerbegindate: @offer.offerbegindate, offerdetails: @offer.offerdetails, offerenddate: @offer.offerenddate, offertext: @offer.offertext, offerurl: @offer.offerurl, promocode: @offer.promocode, roomcategory: @offer.roomcategory, travelbegindate: @offer.travelbegindate, travelenddate: @offer.travelenddate }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
