class TitleValidator < ActiveModel::Validator
    def validate(record)
        Song.all.each do |song|
            unless song.title == record.title && song.release_year == title.release_year
                record.save
            end
        end
        record.errors[:title] << "Song already exists"
    end
    
end