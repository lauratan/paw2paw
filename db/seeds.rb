# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
    {
        first_name: 'Alice',
        last_name: 'Jones',
        email: 'alice@alice.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'alicejones.png'))
        
    },
    {
        first_name: 'Bob',
        last_name: 'Bay',
        email: 'bob@bob.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'bobbay.png'))
    },
    {
        first_name: 'Charlie',
        last_name: 'Compute',
        email: 'charlie@charlie.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'charliecompute.png'))
    },
    {
        first_name: 'Ruby',
        last_name: 'Rails',
        email: 'ruby@ruby.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'rubyrails.png'))
    }
])


sitters = Sitter.create!([
    {
        name: 'Alice Jones',
        address: '198 W Hastings St. Vancouver, BC V6B 1H2',
        summary: "I've been a dog mom for 5 years, I love doggies.",
        rules: 'Prefer small and medium dogs',
        price: 30,
        latitude: 49.282223,
        longitude: -123.109442,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog4.jpeg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog5.jpg'))
        ],
        user_id: 1
    },
    {
        name: 'Charlie Compute',
        address: 'Eihu Lane, Vancouver, BC V6G, Canada',
        summary: "I've been a dog mom for 3 years, I love doggies.",
        rules: 'Prefer small dog',
        price: 30,
        latitude: 49.290625,
        longitude: -123.133273,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog4.jpeg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'dog5.jpg'))
        ],
        user_id: 3
    }
])

availabilities = Availability.create!([
    {
        sitter_id: 1,
        avail_date: '2018-08-09T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-10T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-08T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-09T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-10T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-11T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-12T19:00:00.000Z'
    }
])

bookings = Booking.create!([
    {
        user_id: 2,
        sitter_id: 2,
        dog_name: 'Cooper',
        dog_breed: 'Golden Retriever',
        dog_size: 'Huge',
        dog_age: 2,
        dog_gender: 'Male',
        info: 'Super cute!',
        status: 'Pending'

    },
    {
        user_id: 4,
        sitter_id: 2,
        dog_name: 'Franklin',
        dog_breed: 'Poodle',
        dog_size: 'Mini',
        dog_age: 3,
        dog_gender: 'Male',
        info: 'Super energized, loves running, have long legs!',
        status: 'Pending'
    }
])

booking_dates = BookingDate.create!([
    {
        booking_id: 1,
        date: '2018-08-08'
    },
    {
        booking_id: 1,
        date: '2018-08-09'
    },
    {
        booking_id: 1,
        date: '2018-08-10'
    },
    {
        booking_id: 2,
        date: '2018-08-11'
    },
    {
        booking_id: 2,
        date: '2018-08-11'
    },
    {
        booking_id: 2,
        date: '2018-08-12'
    }
])


puts 'SEED DONE'