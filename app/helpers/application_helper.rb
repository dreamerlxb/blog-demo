module ApplicationHelper

  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to '注册', new_user_registration_path, class: style + (active? new_user_registration_path).to_s) +
        ' '.html_safe +
        (link_to '登录', new_user_session_path, class: style + (active? new_user_session_path).to_s)
    else
      (link_to '个人中心', me_path, class: style + (active? me_path).to_s) +
        ' '.html_safe +
        (link_to '退出', destroy_user_session_path, method: :delete, class: style)
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    "&copy; #{Time.now.year} | <b>lxb</b> All rights reserved".html_safe
    # DevcampViewTool::Renderer.copyright 'lxb', 'All rights reserved'
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
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} uxh-tray-toggle-wrapper #{ active? item[:url] }'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    ' active' if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "lxb 提示", sticky: false)
  end
end