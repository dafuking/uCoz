Elements_path = {
    # поля
    email: { xpath: ".//*[@id='sign_in_email']" },
    pass: { xpath: ".//*[@id='sign_in_password']" },
    login_btn: { xpath: ".//*[@id='sign_in_btn']" },

    # блоки
    form_name: { xpath: ".//*[@id='container_sign_in']/div/div[1]" },
    soc_block: { xpath: ".//*[@id='container_sign_in']/div/div[2]/div/p[1]"},
    chk_box: { xpath: ".//*[@id='sign_in_form']/div/label/span[2]" },
    reg_link: { xpath: ".//*[@id='container_sign_in']/div/div[2]/div/p[2]/button[1]" },
    forgot_link: { xpath: ".//*[@id='container_sign_in']/div/div[2]/div/p[2]/button[2]" },

    # месаги
    not_exist_email: { xpath: ".//*[@class='auth-fields']/div[1]/div[2]" },
    incorrect_pass: { xpath: ".//*[@id='sign_in_form']/div/div[2]/div[2]" },

    # имя юзера в навбаре
    ava_name: { xpath: ".//*[@class='w-user__name']"},
}