puts "🌱 Seeding spices..."

    #iterate 6 times to generate projects

    20.times do
        project = Project.create(
            title: Faker::Company.name,
            description: Faker::Lorem.paragraph,
            goals: Faker::Lorem.sentence,
            timeframe: Faker::Time.forward(days: 30),
            status: ['inprogress', 'completed', 'onhold'].sample,
            timestamps: Time.now,
            image_url: Faker::Internet.url(scheme: 'https', host: 'example.com', path: '/image', query: 'size=medium')


        )
    end

        # iterate 10 times to generate users
        50.times do
            user = User.create(
                name: Faker::Name.name,
                username: Faker::Internet.username,
                email: Faker::Internet.email,
                password: Faker::Internet.password
            )
        end

       project = Project.all
        users = User.all

        #iterate to generate 20 random members

        50.times do
            member = Member.create(
                name: Faker::Name.name,
                user_id: rand(1..8),
                project_id: rand(1..20)
            )
        end


puts "✅ Done seeding!"

