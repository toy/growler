ActionView::Base.send(:include, GrowlerHelper)

ActionView::Helpers::AssetTagHelper.register_javascript_expansion :growler => %w(growler growler_plugin)
