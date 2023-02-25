# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_24_200834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", primary_key: "booking_id", force: :cascade do |t|
    t.bigint "passenger_id", null: false
    t.bigint "vehicle_id", null: false
    t.datetime "booking_date"
    t.text "pickup_location"
    t.text "drop_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["passenger_id"], name: "index_bookings_on_passenger_id"
    t.index ["vehicle_id"], name: "index_bookings_on_vehicle_id"
  end

  create_table "categories", primary_key: "category_id", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", primary_key: "driver_id", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_drivers_on_vehicle_id"
  end

  create_table "parking_slots", force: :cascade do |t|
    t.integer "slot_number"
    t.string "slot_loaction"
    t.boolean "availability_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", primary_key: "passenger_id", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", primary_key: "ride_id", force: :cascade do |t|
    t.bigint "driver_id", null: false
    t.bigint "passenger_id", null: false
    t.bigint "vehicle_id", null: false
    t.datetime "ride_date"
    t.text "pickup_location"
    t.text "drop_location"
    t.decimal "fare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["passenger_id"], name: "index_rides_on_passenger_id"
    t.index ["vehicle_id"], name: "index_rides_on_vehicle_id"
  end

  create_table "vehicles", primary_key: "vehicle_id", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "registration_number"
    t.string "model"
    t.string "owner_name"
    t.text "owner_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_vehicles_on_category_id"
  end

end
