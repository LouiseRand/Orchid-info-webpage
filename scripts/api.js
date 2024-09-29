var API = {
  init: function() {
      const options = {
          method: 'GET',
          headers: {
              'X-RapidAPI-Key': "83320947e2msh0d0abc2e53a205ep1b1370jsn710b46f46e31",
              'X-RapidAPI-Host': "vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com"
          }
      };
      
      $.ajax({
          url: 'https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/api-covid-data/reports/CAN',
          headers: {
            'X-RapidAPI-Key': "83320947e2msh0d0abc2e53a205ep1b1370jsn710b46f46e31",
            'X-RapidAPI-Host': "vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com"
          }
        }).done(function(data) {
          console.log(data);
          $('#word').html('');
          $.each(data.data, function(key, value) {
            if(value.Case_Fatality_Rate) {
              $('#word').append('<li>' + value.Case_Fatality_Rate + ' ' + value.deaths + ' (' + value.province + ')</li>');
            }else{
              $('#word').append('<li>' + value.Case_Fatality_Rate + ' (' + value.province + ')</li>');
            }
          });
      });
  }
}


var API2 = {
  init: function() {
      const options = {
          method: 'GET',
          headers: {
            "X-RapidAPI-Key": '83320947e2msh0d0abc2e53a205ep1b1370jsn710b46f46e31',
            "X-RapidAPI-Host": 'rpg-items.p.rapidapi.com'
          }
      };
      
      $.ajax({
          url: 'https://rpg-items.p.rapidapi.com/item/one?type=armor&Robe&slot=chest',
          headers: {
            "X-RapidAPI-Key": '83320947e2msh0d0abc2e53a205ep1b1370jsn710b46f46e31',
            "X-RapidAPI-Host": 'rpg-items.p.rapidapi.com'
          }
        }).done(function(data) {
          console.log(data);
          $('#two').html('');
          $.each(data.data, function(key, value) {
            if(value.album.cover_medium) {
              $('#jeff').append('<li><img src="' + value.album.cover_medium + '"/>' + value.album.title + ' (' + value.album.type + ')</li>');
            }else{
              $('#jeff').append('<li>' + value.album.title + ' (' + value.album.type + ')</li>');
            }
          });
      });
  }
}







