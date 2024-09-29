$(function() {
    $('body').on('click', '#addFav', function(e) {
        var orchid_id = $(this).data('orchidid');
        $.ajax({
            method: "POST",
            url: "/orchidsforeveryone/ajax/togglefav.php",
            dataType: 'json',
            data: { orchid_id: orchid_id }
        })
        .done(function( rtnData ) {
            console.log(rtnData);
            $('#addFav').text('Remove from favourites').attr('id', 'removeFav');
        });
        
    });

    $('body').on('click', '#removeFav', function(e) {
        var orchid_id = $(this).data('orchidid');
        $.ajax({
            method: "POST",
            url: "/orchidsforeveryone//ajax/togglefav.php",
            dataType: 'json',
            data: { orchid_id: orchid_id }
        })
            .done(function( rtnData ) {
                console.log(rtnData);
                $('#removeFav').text('Add to favourites').attr('id', 'addFav');
            });
            
        })
        
    });

; 
