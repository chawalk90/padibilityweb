class Matcher

  def initialize(user1, user2)
    @user1, @user2 = user1, user2
  end

  def shared(option)
    if option == :bedrooms
      @user1.bedrooms & @user2.bedrooms
    elsif option == :amenities
      @user1.amenities & @user2.amenities
    elsif option == :noise
      @user1.noise & @user2.noise
    elsif option == :wake_up
      @user1.wake_up & @user2.wake_up
    elsif option == :bedtime
      @user1.bedtime & @user2.bedtime
    elsif option == :apartment_pet
      @user1.apartment_pet & @user2.apartment_pet
    elsif option == :sociability
      @user1.sociability & @user2.sociability
    elsif option == :tidiness
      @user1.tidiness & @user2.tidiness
    elsif option == :interest
      @user1.interest & @user2.interest
    elsif option == :political
      @user1.political & @user2.political
    elsif option == :religion
      @user1.religion & @user2.religion
    elsif option == :sex_privacy
      @user1.sex_privacy & @user2.sex_privacy
    elsif option == :smoke
      @user1.smoke & @user2.smoke
    elsif option == :smoke_often
      @user1.smoke_often & @user2.smoke_often
    elsif option == :drink
      @user1.drink & @user2.drink
    elsif option == :drink_often
      @user1.drink_often & @user2.drink_often
    elsif option == :overnight
      @user1.overnight & @user2.overnight
    elsif option == :overnight_often
      @user1.overnight_often & @user2.overnight_often
    end
  end

  def shared_count(option)
    shared(option).length
  end
  
  def shared_by_frequency(option)
    by_freq = Hash.new(0)
    users = [@user1, @user2]
    shared(option).each do |item|
      both_freq = users.map do |user|
        user.frequencies_of(option)[item]
      end
      by_freq[item] = both_freq.min
    end
    by_freq.sort_by{ |item, count| count }.reverse
  end

  def top_shared(option, limit = 5)
    shared_by_frequency(option)[0...limit]
  end

  # How users are ranked together 
  # Changing the weighting will change Match Score
  def score
    track_similarity = shared_count(:tracks) / (((@user1.tracks.uniq.count + @user2.tracks.uniq.count) - shared_count(:tracks)) * 1.0)
    artist_similarity = shared_count(:artists) / (((@user1.artists.uniq.count + @user2.artists.uniq.count) - shared_count(:artists)) * 1.0)
    genre_similarity = shared_count(:genres) / (((@user1.genres.uniq.count + @user2.genres.uniq.count) - shared_count(:genres)) * 1.0)

    # Maximum possible raw score is seven (with yourself). Most people are between 0 and 1.
    raw = (track_similarity * 4) + (artist_similarity * 2) + (genre_similarity * 1)
    score = raw * 100
    score.round
  end

  # Shows on the user profiles
  def sample(option, limit = 3)
    if option == :tracks
      names = shared(:tracks).map{ |item| item.name }
      names.shuffle
      names[0...limit]
    else
      names = top_shared(option, (limit + 2)).map { |item| item[0].name }
      names.shuffle[0...limit]
    end
  end

end