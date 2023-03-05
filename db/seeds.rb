puts "🌱 Seeding spices..."

    #iterate 20 times to generate projects

    50.times do
        project = Project.create(
            title: Faker::Company.name,
            url: Faker::Internet.url,
            description: Faker::Lorem.paragraph,
            goals: Faker::Lorem.sentence,
            timeframe: Faker::Time.forward(days: 30),
            status: ['inprogress', 'completed', 'onhold'].sample,
            timestamps: Time.now,
    )
    end






        # iterate 10 times to generate users
        50.times do
            user = User.create(
                name: Faker::Name.name,
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


puts "🌱Done seeding!"

