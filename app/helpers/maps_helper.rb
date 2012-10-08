module MapsHelper

  def map_image_tag
    src = "http://maps.google.com/maps/api/staticmap?size=240x240&sensor=false&mobile=true&markers="

    @users.each_with_index do |user, i|
      src << "#{user.lat},#{user.lon}"
      if i != @users.length - 1
        src << "|"
      end
    end
    tag = "<img src=\"#{src}\" alt=\"map\" width=\"240\" height=\"240\">"
  end
end
