# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#appointment_date').datepicker
    dateFormat: 'mm-dd-yy'
    
jQuery ->    
   $('#appointment_time').timepicker({
    'disableTimeRanges': [
        ['1am', '2:59am'], ['3:00am', '4:59am'], ['5:00am', '6:59am'],
    
    ]
        
    
});
    
    