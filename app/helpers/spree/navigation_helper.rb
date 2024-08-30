# app/helpers/spree/navigation_helper.rb
module Spree
  module NavigationHelper
    # Helper para crear el árbol de menú principal
    def main_menu_tree(name, icon: nil, sub_menu: nil, url: '#')
      content_tag(:li, class: 'nav-item') do
        link_to url, class: 'nav-link', 'data-toggle': 'collapse', 'aria-expanded': 'false' do
          concat(content_tag(:i, '', class: "nav-icon #{icon}")) if icon
          concat(content_tag(:p) do
            concat name
            concat(content_tag(:i, '', class: 'right fas fa-angle-left'))
          end)
        end +
        content_tag(:ul, class: "nav nav-treeview collapse", id: sub_menu) do
          # Aquí puedes agregar los elementos secundarios del menú
        end
      end
    end
  end
end
