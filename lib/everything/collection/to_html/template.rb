require 'erb'
require 'tilt'

class Everything
  class Collection
    class ToHtml
      class Template
        def render(body)
          Tilt.new(file_path).render do
            body
          end
        end

      private
        def file_path
          template_path = Fastenv.template_path
          file_name     = 'layout.html.erb'

          File.join(template_path, file_name)
        end
      end
    end
  end
end

