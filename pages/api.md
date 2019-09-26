---
title: Use our Heroku api
permalink: /pages/api/
---
<style>
    #javascriptOutput
    {
        border-radius: 20px; 
        border-style: solid; 
        padding: 7px; 
        border-color: white"
    }
    p
    {

    }
</style>
<script>
    $("#javascriptOutput").after("I wrote this with Javascript")


    async function sendGetRequest(){
        var response = await fetch("https://passapiproject.herokuapp.com/api/v1/Uptime",{
            headers:{ "Access-Control-Allow-Origin": "https://passapiproject.herokuapp.com" }
        });
        var myjson = await response.json();
        $("#javascriptOutput").empty();
        myjson.forEach((item) => {
            $("#javascriptOutput").append("<p>State: " + item.state + " StartTime: " + item.startTime + "</p>")
        });
        $("#javascriptOutput").after(myjson)
    }
    function sendPostRequest(){
        //
    }
    function sendDeleteRequest(){
        //
    }
</script>

### js output:
<button  onClick="sendGetRequest()">Get Info</button>
<div id="javascriptOutput"></div>


##### end js output
