get '/create_movie' do
  erb :createMovie
end

# <p><a href="/books/<%= @movie.name %>/edit"><%= @movie.name %></a></p>
# <% @movies.each do |movie| %>
#     <p>
#         <%= @movie = movie %>
#         <a href="/movie/<%= @movie.name %>"><%= @movie.name %></a></p>
#     </p>
# <% end %>
