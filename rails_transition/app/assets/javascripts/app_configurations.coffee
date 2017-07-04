# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
    
    $("#add-new-notification-email").on "click",-> 
        $("#notification_emails").append($("#new-notification-email-form").html())

    @removeElement = (element) ->
        element.parent().remove()