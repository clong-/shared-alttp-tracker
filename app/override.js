(function(window) {
  //functions to override
  var override = [
    'toggle',
    'toggle_dungeon',
    'toggle_medallion'
  ];

  //additional functions to override when map is active
  var map_override = [
    'toggle_chest'
  ];

  //injects comms into methods
  function inject_message(name) {
    var orig_fxn = window[name];
    window[name] = function(x, mute) {
      if(typeof mute === 'undefined') console.log([name,x].join(' '));
      orig_fxn(x);
    }
  }

  //override all the click handlers
  override.forEach(inject_message);
  if(uri_query().map) {
    map_override.forEach(inject_message);
  }

}(window));
