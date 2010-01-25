module GrowlerHelper
  def growl_flashes
    if flash.present?
      javascript_tag do
        flash.map do |key, value|
          key = key.to_s
          func = %w[growl message info notice warn warning error].include?(key) ? key : 'growl'
          %{Growl.#{func}(#{ActiveSupport::JSON.encode(value)}, {header: ' '})}
        end.join("\n")
      end
    end
  end
end
