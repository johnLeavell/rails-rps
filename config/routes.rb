Rails.application.routes.draw do
  get('/', { controller: 'moves', action: 'index' })
  get('/play_game/:element', { controller: 'moves', action: 'play_game' })
end
