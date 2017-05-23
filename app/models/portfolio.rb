class Portfolio < ApplicationRecord

  has_many :technologies
  # lambda : 是指创建Proc的函数
  # 和 Proc.new 一样
  # 但 lambda 和 proc 有两个不同点：
  # 1、lambda 对参数做检查，而 proc 不检查 2、Proc和Lambda中return关键字的行为是不同的
  # 关于block和proc的区别（再议）
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  # accepts_nested_attributes_for :technologies,
  #                               reject_if: -> { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  # 整合图片上传
  mount_uploader :main_image, PortfolioUploader
  mount_uploader :thumb_image, PortfolioUploader

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
