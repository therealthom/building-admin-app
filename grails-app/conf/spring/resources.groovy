import xyz.tech.nuup.UserPasswordEncoderListener
beans = {
    userPasswordEncoderListener(UserPasswordEncoderListener, ref('hibernateDatastore'))
}
