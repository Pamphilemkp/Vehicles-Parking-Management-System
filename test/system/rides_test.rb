require 'application_system_test_case'

class RidesTest < ApplicationSystemTestCase
  setup do
    @ride = rides(:one)
  end

  test 'visiting the index' do
    visit rides_url
    assert_selector 'h1', text: 'Rides'
  end

  test 'should create ride' do
    visit rides_url
    click_on 'New ride'

    fill_in 'Driver', with: @ride.driver_id
    fill_in 'Drop location', with: @ride.drop_location
    fill_in 'Fare', with: @ride.fare
    fill_in 'Passenger', with: @ride.passenger_id
    fill_in 'Pickup location', with: @ride.pickup_location
    fill_in 'Ride date', with: @ride.ride_date
    fill_in 'Ride', with: @ride.ride_id
    fill_in 'Vehicle', with: @ride.vehicle_id
    click_on 'Create Ride'

    assert_text 'Ride was successfully created'
    click_on 'Back'
  end

  test 'should update Ride' do
    visit ride_url(@ride)
    click_on 'Edit this ride', match: :first

    fill_in 'Driver', with: @ride.driver_id
    fill_in 'Drop location', with: @ride.drop_location
    fill_in 'Fare', with: @ride.fare
    fill_in 'Passenger', with: @ride.passenger_id
    fill_in 'Pickup location', with: @ride.pickup_location
    fill_in 'Ride date', with: @ride.ride_date
    fill_in 'Ride', with: @ride.ride_id
    fill_in 'Vehicle', with: @ride.vehicle_id
    click_on 'Update Ride'

    assert_text 'Ride was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Ride' do
    visit ride_url(@ride)
    click_on 'Destroy this ride', match: :first

    assert_text 'Ride was successfully destroyed'
  end
end
