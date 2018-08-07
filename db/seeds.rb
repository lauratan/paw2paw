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
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'alice.png'))
        
    },
    {
        first_name: 'Bob',
        last_name: 'Bay',
        email: 'bob@bob.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'bob.png'))
    },
    {
        first_name: 'Charlie',
        last_name: 'Compute',
        email: 'charlie@charlie.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'charlie.png'))
    },
    {
        first_name: 'Ruby',
        last_name: 'Rails',
        email: 'ruby@ruby.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'ruby.png'))
    },
    {
        first_name: 'Anna',
        last_name: 'Ajax',
        email: 'anna@anna.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'anna.png'))
    },
    {
        first_name: 'Ember',
        last_name: 'Express',
        email: 'ember@ember.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'ember.png'))
    },
    {
        first_name: 'Nicholas',
        last_name: 'Node',
        email: 'nicholas@nicholas.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'nicholas.png'))
    },
    {
        first_name: 'Ray',
        last_name: 'Redux',
        email: 'ray@ray.com',
        password: '1234',
        password_confirmation: '1234',
        avatar: File.open(Rails.root.join('db', 'seed_assets', 'avatar', 'ray.png'))
    }
])


sitters = Sitter.create!([
    {
        name: 'Alice Jones',
        address: '1150, Jervis Street, Vancouver, BC',
        summary: "I've been a dog mom for 5 years, I love doggies. I currently have 2 dogs at home.",
        rules: 'Prefer small and medium dogs, and only spayed females and neutered males',
        price: 30,
        latitude: 49.282731,
        longitude: -123.134450,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter1-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter1-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter1-3.jpeg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter1-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter1-5.jpg'))
        ],
        user_id: 1
    },
    {
        name: 'Bob Bay',
        address: '939, Homer Street, Vancouver, BC',
        summary: "I'll be your dog second best friend!.",
        rules: 'I prefer small dogs. Unspayed females accepted, neutered males only',
        price: 35,
        latitude: 49.278115,
        longitude: -123.119485,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter2-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter2-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter2-3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter2-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter2-5.jpg'))
        ],
        user_id: 2
    },
    {
        name: 'Charlie Compute',
        address: '125 W 15th Ave, Vancouver, BC',
        summary: "Dog home away from home",
        rules: 'All sizes welcome. Prefer dogs over 1 year old. No females in heat.',
        price: 20,
        latitude: 49.257857,
        longitude: -123.107966,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter3-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter3-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter3-3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter3-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter3-5.jpg'))
        ],
        user_id: 3
    },
    {
        name: 'Ruby Rails',
        address: '3577 W 29th Ave, Vancouver, BC',
        summary: "Your dog is my number 1 priority",
        rules: 'Prefer small and medium dogs. Spayed and Neutered dogs only.',
        price: 30,
        latitude: 49.246276,
        longitude: -123.184194,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter4-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter4-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter4-3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter4-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter4-5.jpg'))
        ],
        user_id: 4
    },
    {
        name: 'Anna Ajax',
        address: '277, Thurlow Street, Vancouver, BC',
        summary: "I'll love your dog like my own",
        rules: 'All sizes welcome! No females in heat.',
        price: 20,
        latitude: 49.288712,
        longitude: -123.118906,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter5-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter5-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter5-3.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter5-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter5-5.jpg'))
        ],
        user_id: 5
    },
    {
        name: 'Ember Express',
        address: '308, Forbes Avenue, Vancouver, BC',
        summary: "Flexible, Affordable, Fun Times!",
        rules: 'Prefer small and medium dogs. Crate-trained dogs only.',
        price: 25,
        latitude: 49.317411,
        longitude: -123.085222,
        photos: [
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter6-1.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter6-2.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter6-3.jpeg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter6-4.jpg')),
            File.open(Rails.root.join('db', 'seed_assets', 'photo', 'sitter6-5.jpg'))
        ],
        user_id: 6
    }
])

availabilities = Availability.create!([
    {
        sitter_id: 1,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 1,
        avail_date: '2018-08-31T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 2,
        avail_date: '2018-08-31T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 3,
        avail_date: '2018-08-31T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 4,
        avail_date: '2018-08-31T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 5,
        avail_date: '2018-08-31T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-13T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-14T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-15T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-16T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-19T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-20T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-21T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-22T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-23T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-24T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-25T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-26T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-27T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-28T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-29T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-30T19:00:00.000Z'
    },
    {
        sitter_id: 6,
        avail_date: '2018-08-31T19:00:00.000Z'
    }
])

bookings = Booking.create!([
    {
        user_id: 2,
        sitter_id: 1,
        dog_name: 'Cooper',
        dog_breed: 'Golden Retriever',
        dog_size: 'Giant',
        dog_age: 2,
        dog_gender: 'Male',
        info: 'Very energetic, loves to play, run, and eat. Super friendly and lovable ❤️',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 4,
        sitter_id: 1,
        dog_name: 'Franklin',
        dog_breed: 'Poodle',
        dog_size: 'Small',
        dog_age: 3,
        dog_gender: 'Male',
        info: 'Long legs, loves to play and run around all day long!',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 5,
        sitter_id: 1,
        dog_name: 'Otis',
        dog_breed: 'Pug',
        dog_size: 'Small',
        dog_age: 1,
        dog_gender: 'Male',
        info: 'I am a baby pug. I am always the center of attention 🐾',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 3,
        sitter_id: 1,
        dog_name: 'Juca',
        dog_breed: 'Frenchie',
        dog_size: 'Medium',
        dog_age: 4,
        dog_gender: 'Male',
        info: 'I am a lap dog, obsessed with food. Very chill and easy going!',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 8,
        sitter_id: 6,
        dog_name: 'Almond',
        dog_breed: 'Havanese',
        dog_size: 'Small',
        dog_age: 6,
        dog_gender: 'Male',
        info: 'Small white furry ball. Loves to huddle with everyone and run all day long.',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 4,
        sitter_id: 6,
        dog_name: 'Morley',
        dog_breed: 'Golden Retriever',
        dog_size: 'Giant',
        dog_age: 5,
        dog_gender: 'Male',
        info: 'Super friendly, loves to play with his little blue ball. Enjoys pats and food!',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    },
    {
        user_id: 7,
        sitter_id: 6,
        dog_name: 'Tory',
        dog_breed: 'Mixed',
        dog_size: 'Big',
        dog_age: 2,
        dog_gender: 'Female',
        info: 'Extremely energetic and active, super friendly, You will always see me wagging my tail.',
        dog_avatar: File.open(Rails.root.join('db', 'seed_assets', 'dog_avatar', 'tory.png')),
        status: 'Pending'
    }
])

booking_dates = BookingDate.create!([
    {
        booking_id: 1,
        date: '2018-08-13'
    },
    {
        booking_id: 1,
        date: '2018-08-14'
    },
    {
        booking_id: 1,
        date: '2018-08-15'
    },
    {
        booking_id: 2,
        date: '2018-08-16'
    },
    {
        booking_id: 3,
        date: '2018-08-19'
    },
    {
        booking_id: 3,
        date: '2018-08-20'
    },
    {
        booking_id: 3,
        date: '2018-08-21'
    },
    {
        booking_id: 4,
        date: '2018-08-22'
    },
    {
        booking_id: 4,
        date: '2018-08-23'
    },
    {
        booking_id: 4,
        date: '2018-08-24'
    },
    {
        booking_id: 4,
        date: '2018-08-25'
    },
    {
        booking_id: 5,
        date: '2018-08-13'
    },
    {
        booking_id: 5,
        date: '2018-08-14'
    },
    {
        booking_id: 5,
        date: '2018-08-15'
    },
    {
        booking_id: 6,
        date: '2018-08-16'
    },
    {
        booking_id: 7,
        date: '2018-08-19'
    },
    {
        booking_id: 7,
        date: '2018-08-20'
    },
    {
        booking_id: 7,
        date: '2018-08-21'
    }
])


puts 'SEED DONE'