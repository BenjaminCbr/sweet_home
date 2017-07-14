module NavbarHelper
  def get_props_for(user)
    user_specific_part =
    if user.blank?
      {user_signed_in: false, user_name: nil}
    else
      {user_signed_in: true, user_name: user.name}
    end
    {
      sign_in_url: new_user_session_path,
      sign_up_url: new_user_registration_path,
      sign_out_url: destroy_user_session_path
    }.merge(user_specific_part)
  end
end
