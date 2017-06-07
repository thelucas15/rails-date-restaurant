module ApplicationHelper

def resource_name
    :user
  end

  def resource_class
    devise_mapping.to
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def avatar_url(user)

    if user.facebook_picture_url
      user.facebook_picture_url
    elsif user.photo.url
      # user.photo.url
      current_user.photo.url(:bright_face)
    else
      "http://placehold.it/30x30"
    end


    # current_user.facebook_picture_url

    # if !avatar_url.blank?
    #   image_tag avatar_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    # elsif !current_user.photo.url.blank?
    #   cl_image_tag current_user.photo.url(:bright_face), class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    # else
    #   image_tag "http://placehold.it/30x30"
    # end

  end

end
