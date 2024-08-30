# app/helpers/spree/navigation_helper.rb
module Spree
  module NavigationHelper
    def main_menu_tree(name, icon: nil, sub_menu: nil, url: '#')
      content_tag(:li, class: 'nav-item') do
        link_to(url, class: 'nav-link', 'data-toggle': 'collapse', 'aria-expanded': 'false') do
          # Agrega el ícono y el texto del menú principal
          concat(content_tag(:i, '', class: "nav-icon #{icon}")) if icon
          concat(content_tag(:p) do
            concat name
            concat content_tag(:i, '', class: 'right fas fa-angle-left')
          end)
        end +

        # Genera el submenú (lista de navegación secundaria)
        content_tag(:ul, class: "nav nav-treeview collapse", id: sub_menu) do
          # Aquí puedes agregar los elementos secundarios del menú
          # Puedes iterar sobre un array de elementos o agregar contenido manualmente
          ''
        end
      end
    end
  end
end
