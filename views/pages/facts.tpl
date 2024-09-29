{extends file="layouts/main.tpl"}
{block name="body"}
    <h1 class="mb-4 pb-2">Air-Quality in Raleigh</h1>
    <p>Date & Time : {$weather.data[0].datetime}</p> <!-- $weather calls decoded array, data[0] calls first array, datetime calls item within array (date and time)-->
    <p>Nitrogen Dioxide : {$weather.data[0].no2}</p> <!-- $weather calls decoded array, data[0] calls first array, no2 calls item within array -->
    <br><br>
    <p>Date & Time : {$weather.data[19].datetime}</p> <!-- Shows data 19 - different time of the day -->
    <p>Nitrogen Dioxide : {$weather.data[19].no2}</p>
{/block}