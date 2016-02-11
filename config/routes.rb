Rails.application.routes.draw do
  get 'trafico/actualizarexpediente'

  resources :updates

  resources :expedients do
    resources :updates
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users


  #get '/updates/:id/expedienteid/:id', to: 'updates#update', as: 'updateyvolver'
  #http://localhost:3000/updates/1?expdienteid=1
  #<%= link_to("Corregir 2", :controller => "updates", :action => "update", :expdienteid => @expedient.id) %> |

  #  get 'updateunupdate' => 'updates#update', :as => 'updateyvolver'

  #Para quitar un role (idrole) de un Acceso, y proveer el id necesario para "volver"  (:idaccess) y seguir borrando comodamente
  #Ejemplo de la vista que manda datos a esta ruta:

  #<% @access.roles.each do |r| %>
  #  <%= r.name %>
  #  <%= r.denominacion %>
  #   <%= link_to 'Quitar', :controller => 'accesses', :action => 'quitarrole', :idrole => r.id, :idaccess => @access.id %>
  #   <%= link_to 'Corregir :controller => 'updates', :action => 'update', :idupdate => r.id, :idexpedient => @expedient.id %>


  #get '/accesses/:idrole/quitarrole/:idaccess', :to => 'accesses#quitarrole'
  #get '/trafico/:idupdate/:idexpedient', :to => 'trafico#actualizarexpediente'

end
