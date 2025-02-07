module ApplicationHelper
    
    def navbar_nav_item(name, icon, path, label = nil, action = nil, classes = nil)
        is_active = action ? action_name == action : controller_name == name
        render(inline: %{
            <li>
                <%= link_to '#{ url_for(path) }', 
                            class: 'text-#{ is_active ? 'primary font-bold' : 'base-content' } #{classes}' do %>
                    <%= fa_icon '#{ icon }' %>
                    #{ label ? label : name.humanize }
                <% end %>
            </li>
        })
    end

    def page_entries_info(collection)
        model_name = collection.respond_to?(:human_name) ? collection.model_name.human : (collection.first&.model_name&.human || '')
    
        sanitize "Affichage de  #{model_name} " +
          tag.b("#{collection.offset + 1} - #{[collection.per_page * collection.current_page, collection.total_entries].min}") +
          ' sur ' + tag.b(collection.total_entries) +
          ' au total'
    end

    def time_in_paris

        DateTime.now.in_time_zone('Europe/Paris')

    end

    def time_in_paris_selon_la_saison
        #
        # penser à changer refreshProgressBar()
        #

        # Heure d'hiver
        DateTime.now.in_time_zone('Europe/Paris') + 1.hours

        # Heure d'été
        #DateTime.now.in_time_zone('Europe/Paris') + 2.hours
    end

    def clean_page(page)
        begin
            WillPaginate::PageNumber(page)
        rescue WillPaginate::InvalidPage
            1
        end
    end

    def sort_link(column, title = nil)
        title ||= (@model_class ? @model_class.human_attribute_name(column) : column.titleize)
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        icon = sort_direction == "asc" ? "sort-down" : "sort-up"
        icon = column == sort_column ? icon : nil
        link_title = sort_direction == "asc" ? "Tri croissant" : "Tri décroissant"

        link_to "<span title=\"#{h link_title}\">#{h title} <span>#{ fa_icon(icon) if icon }</span></span>".html_safe, url_for(request.parameters.merge(column: column, direction_etudiants: direction)), class: 'text-reset'
    end

end
