require 'redcarpet'

module BlogsHelper
  def markdown(blog_body)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       no_intra_emphasis: true,
                                       fenced_code_blocks: true,
                                       disable_indented_code_blocks: true)
    return markdown.render(blog_body).html_safe
  end
end
