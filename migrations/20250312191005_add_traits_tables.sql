-- +goose Up
-- +goose StatementBegin
CREATE TYPE trait_id AS ENUM(
        -- emotional
        'ambitious',
        'cheerful',
        'childish',
        'clumsy',
        'creative',
        'erratic',
        'genius',
        'gloomy',
        'goofball',
        'high_maintenance',
        'hot_headed',
        'lovebug',
        'paranoid',
        'practice_makes_perfect',
        'romantic',
        'romantically_reserved',
        'self_assured',
        'squeamish',
        'unflirty',
        'wise',
        -- hobby
        'art_lover',
        'bookworm',
        'dance_machine',
        'foodie',
        'geek',
        'loves_outdoors',
        'maker',
        'music_lover',
        'recycle_disciple',
        -- lifestyle
        'active',
        'adventurous',
        'chased_by_death',
        'child_of_the_islands',
        'child_of_the_ocean',
        'child_of_the_village',
        'freegan',
        'glutton',
        'green_fiend',
        'kleptomaniac',
        'lactose_intolerant',
        'lazy',
        'macabre',
        'materialistic',
        'neat',
        'overachiever',
        'perfectionist',
        'rancher',
        'skeptical',
        'slob',
        'vegetarian',
        -- social
        'animal_enthusiast',
        'bro',
        'cat_lover',
        'cringe',
        'dog_lover',
        'evil',
        'family_oriented',
        'generous',
        'good',
        'grouch',
        'hates_children',
        'horse_lover',
        'idealist',
        'insider',
        'jealous',
        'loner',
        'loyal',
        'mean',
        'noncommittal',
        'nosy',
        'outgoing',
        'party_animal',
        'proper',
        'self_absorbed',
        'shady',
        'snob',
        'socially_awkward',
        -- toddler
        'angelic',
        'charmer',
        'clingy',
        'fussy',
        'independent',
        'inquisitive',
        'silly',
        'wild',
        -- infant
        'cautious',
        'sensitive',
        'calm',
        'intense',
        'wiggly',
        'sunny'
        --
);

CREATE TABLE traits(
        id trait_id PRIMARY KEY,
        name text NOT NULL,
        description text NOT NULL,
        ages age_id[] NOT NULL DEFAULT ARRAY[] ::age_id[],
        product product_id REFERENCES products(id) NOT NULL
);

INSERT INTO traits(id, name, product, ages, description)
        VALUES
                -- emotional
('ambitious', 'Ambitious', 'base', ARRAY['young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from career success, gain negative Moodlets from career failure, and may become Tense if not promoted.'),
('cheerful', 'Cheerful', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Happier than other Sims.'),
('childish', 'Childish', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from watching the Kids Network, become Playful when playing with Children, and become Happy when playing with Children''s toys.'),
('clumsy', 'Clumsy', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to fail more often at physical activities and tend to laugh at failure instead of becoming upset.'),
('creative', 'Creative', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Inspired, can Share Creative Ideas with other Sims, and may become upset if they''re not creative for a period of time.'),
('erratic', 'Erratic', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can Talk to themselves and have unpredictable Emotions.'),
('genius', 'Genius', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Focused, can Share Ideas with other Sims, and may become upset if they haven''t improved their Mental Skills for some time.'),
('gloomy', 'Gloomy', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Sad, can Share Melancholy Thoughts to other Sims, and while sad, gain a boost to their Creative Skill.'),
('goofball', 'Goofball', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Playful.'),
('high_maintenance', 'High Maintenance', 'spa_day', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims require extra work to keep in good condition. Their problems sometimes appear trivial, and may even appear out of the blue. These struggles can be remedied through mindful habits, which puts them in a state of catharsis.'),
('hot_headed', 'Hot-Headed', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Angry, can Rile up other Sims, and become Angry when targeted with Mischief.'),
('lovebug', 'Lovebug', 'lovestruck', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Sims with this trait are constantly swept up in the whirlwind of romance. They fall in love easily, often wearing their hearts on their sleeves.'),
('paranoid', 'Paranoid', 'strangerville', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Paranoid Sims feel that danger is around every corner, and that people are always talking about them. Paranoid Sims feel a sense of security while hanging out in basements.'),
('practice_makes_perfect', 'Practice Makes Perfect', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Sims with this trait learn skills faster, even if they are a bit slower at first.'),
('romantic', 'Romantic', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Flirty and may become Sad if they don''t have any Romantic social interactions for a period of time.'),
('romantically_reserved', 'Romantically Reserved', 'lovestruck', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims often tread carefully in the realm of love, preferring to take their time and build solid emotional connections before jumping headfirst into romance.'),
('self_assured', 'Self-Assured', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Confident.'),
('squeamish', 'Squeamish', 'outdoor_retreat', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Squeamish Sims are nauseated by the sight of creepy crawlies, vomiting, violence and death. These Sims become Uncomfortable near anything dirty.'),
('unflirty', 'Unflirty', 'city_living', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims get Tense around Flirty Sims and seldom get Flirty themselves. It''s difficult for them to be Romantic in public.'),
('wise', 'Wise', 'businesses_and_hobbies', ARRAY['elder']::age_id[], 'A Sim who''s experienced enough of life to know what really matters. These Sims enjoy reminiscing and sharing life''s wisdom, making them excellent Mentors for those willing to listen. Their years of experience allow them to naturally learn new Skills with ease, and their emotional intelligence reduces their angry and uncomfortable thoughts.'),
                -- hobby
('art_lover', 'Art Lover', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from Viewing works of art and can Admire Art and Discuss Art in unique ways.'),
('bookworm', 'Bookworm', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from reading Books and can Analyze Books and Discuss Books in unique ways.'),
('dance_machine', 'Dance Machine', 'get_together', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can''t wait to get down, boogie, and party all night! When at venues like Bars, Nightclubs, and Lounges, these Sims can get a burst of energy with the Party Time interaction.'),
('foodie', 'Foodie', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy and have Fun when eating good food, become Uncomfortable when eating bad food, and can Watch Cooking Shows for ideas.'),
('geek', 'Geek', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy when Reading Sci-Fi or Playing Video Games, may become Tense if they haven''t played much, are better at finding Collectibles, and can Discuss Geek Things with other Geek Sims.'),
('loves_outdoors', 'Loves Outdoors', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can Enthuse about Nature to other Sims and become Happy when Outdoors.'),
('maker', 'Maker', 'eco_lifestyle', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become happy when making things. They become sad when it''s been too long since completing a project on a Fabricator, Candlemaking Station, Juice Fizzer, or Woodworking Table. They do not receive negative effects from crafting or repair failures.'),
('music_lover', 'Music Lover', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets and boost their Fun Need when Listening to Music and become Happy when playing instruments.'),
('recycle_disciple', 'Recycle Disciple', 'eco_lifestyle', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims are rabid recyclers that benefit from recycling and rummaging for bits and pieces, but should they go too long without indulging in their hobby...'),
                -- lifestyle
('active', 'Active', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to be Energized, can Pump Up other Sims, and may become upset if they don''t exercise for a period of time.'),
('adventurous', 'Adventurous', 'snowy_escape', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims seek out new and unique experiences.'),
('chased_by_death', 'Chased By Death', 'life_and_death', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Chased by Death sims know that death follows their every move. While risky and dangerous behaviors may have deadly consequences, frequent near-death experiences give these Sims a desire to live each day to the fullest and progress along their soul''s journey faster. Keenly aware of theirs own mortality , these Sims feel best when they are achieving something meaningful with their limited time left.'),
('child_of_the_islands', 'Child of the Islands', 'island_living', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims experience a spiritual connection to islands of Sulani. Honor the islands by partaking in their culture, summon powerful elementals and reap the rewards of their blessings—or the consequences of their disfavor.'),
('child_of_the_ocean', 'Child of the Ocean', 'island_living', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Answer the call of the ocean! Sims with this trait will prefer water related activities and feel closer to denizens of the sea.'),
('child_of_the_village', 'Child of the Village', 'for_rent', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims love feeling anchored to their community and Tomarani culture. Keeping in touch with loved ones and engaging in activities that remind them of home is important for being Happy.'),
('freegan', 'Freegan', 'eco_lifestyle', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims reject consumerism and prefer to reduce wasteful spending by any means. They enjoy finding re-used or thrown away goods and foods. In fact, they have the best luck at finding the highest-quality treasures in Dumpsters! They may become tense or uncomfortable if they spend too much time earning or spending Simoleons.'),
('glutton', 'Glutton', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims have a greater negative reaction to Hunger, always enjoy eating, no matter the quality of the food, and will eat Spoiled Food.'),
('green_fiend', 'Green Fiend', 'eco_lifestyle', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims are happiest when living on a green street and will continuously work towards making their environment more eco-friendly.'),
('kleptomaniac', 'Kleptomaniac', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims don''t mind "borrowing" things from others with a simple swipe, but will get Tense when they have not swiped anything in a while.'),
('lactose_intolerant', 'Lactose Intolerant', 'cottage_living', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims will become sick if they eat dairy, but will feel great if they have avoided it for a while.'),
('lazy', 'Lazy', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from Watching TV or Napping as well as from Comfortable furniture, become Fatigued more quickly from exercise, and grow Tense when performing household chores.'),
('macabre', 'Macabre', 'life_and_death', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Embrace your inner darkness - and your occasional intrusions of light. Macabre Sims are all about being their best, unique Sim self while still reveling in all that life (and the afterlife) has to offer.'),
('materialistic', 'Materialistic', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can Admire and Brag about Possessions and become Sad when they haven''t purchased a new item for a period of time.'),
('neat', 'Neat', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy and have Fun when performing household chores, can have a Cleaning Frenzy, and become really Uncomfortable in dirty surroundings.'),
('overachiever', 'Overachiever', 'high_school_years', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to raise their skills faster and are happy when they finish work tasks, but are a little harder to get along with as friends.'),
('perfectionist', 'Perfectionist', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims take longer to craft items but tend to make them higher quality, gain powerful Moodlets after crafting a high quality item, and gain negative Moodlets after crafting a low quality item.'),
('rancher', 'Rancher', 'horse_ranch', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims excel at ranch life and take pride in their work. They enjoy ranch chores and caring for their Livestock.'),
('skeptical', 'Skeptical', 'life_and_death', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Not entirely trusting of the majority of this you see of hear. Skeptical Sims like the challenge the universe to provide concrete proof that something is indeed as it might appear'),
('slob', 'Slob', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims are not affected by dirty surroundings, make household items dirtier faster, and can Rummage for Food in garbage.'),
('vegetarian', 'Vegetarian', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims will actively avoid eating foods that contain meat products and can become sick if they eat such foods.'),
                -- social
('animal_enthusiast', 'Animal Enthusiast', 'cottage_living', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims are obsessed with animals, and will seek their company often. They will have an easier time caring for animals and getting closer to them.'),
('bro', 'Bro', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can Bro Hug other Bros, gain Confidence around other Bros, and become Energized from Watching Sports.'),
('cat_lover', 'Cat Lover', 'cats_and_dogs', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to make cats their companions, preferring the company of cats to other Sims.'),
('cringe', 'Cringe', 'for_rent', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Sims who are obnoxiously oblivious and oftentimes met with polarizing reactions. Cringe Sims can be socially unaware of their surroundings at times, but have an adorable enthusiasm for life.'),
('dog_lover', 'Dog Lover', 'cats_and_dogs', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims love to be near dogs. They will gain relationships faster with dogs and socialize with dogs more than the average Sim.'),
('evil', 'Evil', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy around Sims with negative Moodlets, can Laugh Maniacally and Discuss Evil Plans, and become Angry when interacting with Good Sims.'),
('family_oriented', 'Family-oriented', 'base', ARRAY['young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy around family members, become Sad if they don''t interact with family for a period of time, and can Boast about Family.'),
('generous', 'Generous', 'for_rent', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Caring, empathetic, and patient. These Sims are happiest when offering their time and money to help others. Everyone loves Generous Sims, but they can be a little too brazen with their donations.'),
('good', 'Good', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy around Sims with positive Moodlets, can Donate to Charity, become Sad with interacting with Evil Sims, and can Discuss World Peace.'),
('grouch', 'Grouch', 'cozy_celebrations', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims raise their Mischief skill faster by playing pranks and bothering others with their surprises.'),
('hates_children', 'Hates Children', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Angry around Children, become Tense after Try for a Baby, and can be Mean to Children.'),
('horse_lover', 'Horse Lover', 'horse_ranch', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims share a strong bond with Horses. They have an easier time socializing with and caring for Horses than other Sims.'),
('idealist', 'Idealist', 'businesses_and_hobbies', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims hold high moral standards and strive for a better world guided by their values and principles. They are committed to doing what they believe is right, even when it''s challenging.'),
('insider', 'Insider', 'get_together', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims love being in Clubs, and tend to be happiest when surrounded by their friends.'),
('jealous', 'Jealous', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims get Jealous more easily than other Sims. They gain a boost of Confidence from being around their significant other, but get Tense if they haven''t seen them recently.'),
('loner', 'Loner', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy when alone, do not receive negative Moodlets when their Social Need is low, become Tense around strangers, and become Embarrassed more often by social rejection.'),
('loyal', 'Loyal', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Loyal sims [sic] value their relationships and fully commit to them. whether they are friendship, romance or even work! They avoid lying and cheating because their loved ones'' trust is very important to them.'),
('mean', 'Mean', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims become Happy when being Mean or Mischievous to other Sims and become Confident after winning a fight.'),
('noncommittal', 'Noncommittal', 'base', ARRAY['young_adult', 'adult', 'elder']::age_id[], 'These Sims become Tense after a while in the same job or relationship, become Happy when they Quit a Job or Break Off a relationship, take longer to Propose, and can Discuss their Fear of Commitment.'),
('nosy', 'Nosy', 'for_rent', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'Sims who thrive on gossip, snooping, and spying. They have incredibly poor boundaries and don''t quite understand what personal space is, but they will discover secrets by any means necessary.'),
('outgoing', 'Outgoing', 'base', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims gain powerful Moodlets from Friendly socialization, have their Social need decay quickly, and gain more negative Moodlets when their Social need is low.'),
('party_animal', 'Party Animal', 'high_school_years', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to enjoy parties and letting every other Sim know by hyping up a crowd and performing party tricks.'),
('proper', 'Proper', 'snowy_escape', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims tend to disapprove of other Sims'' improper behavior such as Mean or Mischievous socials, but find themselves happier in Formal Outfits and have a much easier time with Friendly and Romantic socials.'),
('self_absorbed', 'Self-Absorbed', 'get_famous', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims are all about themselves! They can Fish for Compliments, are more excited when receiving a present, and may become tense when they haven’t gotten enough attention. The celebrity spotlight is something they generally relish. After all, everyone else should love them as much as they do themselves, right?'),
('shady', 'Shady', 'businesses_and_hobbies', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims excel at exploiting situations and bending rules for personal gain, often without regard for conventional ethics or fairness. They thrive in mischievous activities and can influence others to adopt their way of living.'),
('snob', 'Snob', 'base', ARRAY['teen', 'young_adult', 'adult', 'elder']::age_id[], 'These Sims can Critique Work on low quality items, are bored by "low brow" television, and gain Confidence around other Snob Sims.'),
('socially_awkward', 'Socially Awkward', 'high_school_years', ARRAY['child', 'teen', 'young_adult', 'adult', 'elder']::age_id[], ''),
                -- toddler
('angelic', 'Angelic', 'base', ARRAY['toddler']::age_id[], 'Idyllic, easygoing Toddlers. They are never defiant and they don''t throw a tantrum. They can easily talk to strangers.'),
('charmer', 'Charmer', 'base', ARRAY['toddler']::age_id[], 'These Toddlers love to socialize. They earn Communication skill faster, and don''t suffer Stranger Danger from strangers. They can Share the Love with other Sims.'),
('clingy', 'Clingy', 'base', ARRAY['toddler']::age_id[], 'These shy Toddlers avoid Sims outside the household and get sad if left behind. They gain extra skill when taught. And they recover faster from bad moods when Comforted.'),
('fussy', 'Fussy', 'base', ARRAY['toddler']::age_id[], 'Tiny trouble-makers who love to Cry, cause trouble, and Throw Fits. But being noticed makes them Happy and helps them overcome negative Moodlets.'),
('independent', 'Independent', 'base', ARRAY['toddler']::age_id[], 'These Toddlers love their freedom, and don''t like to take orders from caregivers. They gain extra skill when they are left alone, and need less Attention than other Toddlers.'),
('inquisitive', 'Inquisitive', 'base', ARRAY['toddler']::age_id[], 'Curious explorers. These Toddlers gain Thinking skill slightly faster. They are happiest when learning something, and sad if they haven''t learned anything lately.'),
('silly', 'Silly', 'base', ARRAY['toddler']::age_id[], 'Goofy and curious. These Toddlers love to tell jokes and get Playful. They earn Imagination skill slightly faster.'),
('wild', 'Wild', 'base', ARRAY['toddler']::age_id[], 'Spirited and full of Energy. These Toddlers love to explore and get Energized. They earn Movement skill slightly faster. They get sad if they haven''t been outside in a while.'),
                -- infant
('cautious', 'Cautious', 'base', ARRAY['infant']::age_id[], 'These Sims appreciate the familiar but are slow to warm up to new experiences, locations, and Sims.'),
('sensitive', 'Sensitive', 'base', ARRAY['infant']::age_id[], 'These Sims are prone to diaper rash, are often picky with food, and can more easily become overstimulated by too much play and social interaction; however, they also rest more peacefully through the night when soothed.'),
('calm', 'Calm', 'base', ARRAY['infant']::age_id[], 'These Sims like to watch the world, are less likely to cry or become angry, and don''t grow tired of activities as easily as other infants; however, they are less likely to explore the world on their own.'),
('intense', 'Intense', 'base', ARRAY['infant']::age_id[], 'These Sims have big emotions and are easily entertained, but they are also more difficult to calm when in a bad mood.'),
('wiggly', 'Wiggly', 'base', ARRAY['infant']::age_id[], 'These Sims are always on the go and want to play and move about; however they often struggle to fall asleep or pay attention for extended periods of time.'),
('sunny', 'Sunny', 'base', ARRAY['infant']::age_id[], 'These Sims are bursting with smiles and giggles and enjoy engaging with other Sims, but they do require more social attention.')
                --
;

CREATE TABLE trait_conflicts(
        trait_id trait_id REFERENCES traits(id) ON DELETE CASCADE NOT NULL,
        conflict_trait_id trait_id REFERENCES traits(id) ON DELETE CASCADE NOT NULL,
        UNIQUE (trait_id, conflict_trait_id)
);

INSERT INTO trait_conflicts(trait_id, conflict_trait_id)
        VALUES ('active', 'lazy'),
('adventurous', 'lazy'),
('bro', 'grouch'),
('child_of_the_islands', 'child_of_the_village'),
('child_of_the_village', 'child_of_the_islands'),
('clumsy', 'maker'),
('erratic', 'wise'),
('goofball', 'snob'),
('idealist', 'shady'),
('jealous', 'lovebug'),
('kleptomaniac', 'good'),
('loves_outdoors', 'squeamish'),
('loyal', 'noncommittal'),
('overachiever', 'lazy'),
('paranoid', 'outgoing'),
('rancher', 'lazy'),
('shady', 'idealist'),
('skeptical', 'macabre'),
('ambitious', 'lazy'),
('ambitious', 'freegan'),
('cringe', 'proper'),
('cringe', 'wise'),
('family_oriented', 'hates_children'),
('family_oriented', 'noncommittal'),
('foodie', 'freegan'),
('foodie', 'glutton'),
('hates_children', 'childish'),
('hates_children', 'family_oriented'),
('insider', 'grouch'),
('insider', 'loner'),
('macabre', 'cheerful'),
('macabre', 'skeptical'),
('maker', 'clumsy'),
('maker', 'lazy'),
('materialistic', 'freegan'),
('materialistic', 'generous'),
('neat', 'lazy'),
('neat', 'slob'),
('romantic', 'romantically_reserved'),
('romantic', 'unflirty'),
('socially_awkward', 'outgoing'),
('socially_awkward', 'party_animal'),
('childish', 'evil'),
('childish', 'hates_children'),
('childish', 'snob'),
('evil', 'childish'),
('evil', 'generous'),
('evil', 'good'),
('gloomy', 'cheerful'),
('gloomy', 'hot_headed'),
('gloomy', 'party_animal'),
('glutton', 'foodie'),
('glutton', 'generous'),
('glutton', 'squeamish'),
('hot_headed', 'cheerful'),
('hot_headed', 'gloomy'),
('hot_headed', 'wise'),
('mean', 'generous'),
('mean', 'good'),
('mean', 'proper'),
('noncommittal', 'family_oriented'),
('noncommittal', 'lovebug'),
('noncommittal', 'loyal'),
('slob', 'neat'),
('slob', 'proper'),
('slob', 'squeamish'),
('snob', 'childish'),
('snob', 'freegan'),
('snob', 'goofball'),
('unflirty', 'lovebug'),
('unflirty', 'romantic'),
('unflirty', 'romantically_reserved'),
('wise', 'cringe'),
('wise', 'erratic'),
('wise', 'hot_headed'),
('cheerful', 'gloomy'),
('cheerful', 'grouch'),
('cheerful', 'hot_headed'),
('cheerful', 'macabre'),
('good', 'evil'),
('good', 'grouch'),
('good', 'kleptomaniac'),
('good', 'mean'),
('loner', 'insider'),
('loner', 'lovebug'),
('loner', 'outgoing'),
('loner', 'party_animal'),
('romantically_reserved', 'lovebug'),
('romantically_reserved', 'outgoing'),
('romantically_reserved', 'romantic'),
('romantically_reserved', 'unflirty'),
('party_animal', 'gloomy'),
('party_animal', 'grouch'),
('party_animal', 'loner'),
('party_animal', 'socially_awkward'),
('proper', 'cringe'),
('proper', 'grouch'),
('proper', 'mean'),
('proper', 'slob'),
('squeamish', 'freegan'),
('squeamish', 'glutton'),
('squeamish', 'loves_outdoors'),
('squeamish', 'slob'),
('generous', 'evil'),
('generous', 'glutton'),
('generous', 'grouch'),
('generous', 'materialistic'),
('generous', 'mean'),
('freegan', 'ambitious'),
('freegan', 'foodie'),
('freegan', 'materialistic'),
('freegan', 'snob'),
('freegan', 'squeamish'),
('outgoing', 'grouch'),
('outgoing', 'loner'),
('outgoing', 'paranoid'),
('outgoing', 'romantically_reserved'),
('outgoing', 'socially_awkward'),
('lovebug', 'grouch'),
('lovebug', 'jealous'),
('lovebug', 'loner'),
('lovebug', 'noncommittal'),
('lovebug', 'romantically_reserved'),
('lovebug', 'unflirty'),
('lazy', 'active'),
('lazy', 'adventurous'),
('lazy', 'ambitious'),
('lazy', 'maker'),
('lazy', 'neat'),
('lazy', 'overachiever'),
('lazy', 'rancher'),
('grouch', 'bro'),
('grouch', 'cheerful'),
('grouch', 'generous'),
('grouch', 'good'),
('grouch', 'insider'),
('grouch', 'lovebug'),
('grouch', 'outgoing'),
('grouch', 'party_animal'),
('grouch', 'proper')
        --
;

-- +goose StatementEnd
-- +goose Down
-- +goose StatementBegin
DROP TABLE trait_conflicts;

DROP TABLE traits;

DROP TYPE trait_id;

-- +goose StatementEnd
