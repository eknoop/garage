ready = -> 
  $('#machines').DataTable()
  $('#expenses').DataTable()
  $('.best_in_place').best_in_place()
  return

$(document).ready(ready)
$(document).on('page:load', ready)