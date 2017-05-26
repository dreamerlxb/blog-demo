module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "注册", new_user_registration_path, class: style) +
          " ".html_safe +
          (link_to "登录", new_user_session_path, class: style)
    else
      link_to "退出", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    DevcampViewTool::Renderer.copyright 'lxb', 'All rights reserved'
  end

  def nav_items
    [{
      url: root_path,
      title: '首页'
    }, {
      url: about_me_path,
      title: '关于'
    }, {
      url: contact_path,
      title: '联系'
    }, {
      url: blogs_path,
      title: '博客'
    }, {
      url: portfolios_path,
      title: '作品'
    }]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end