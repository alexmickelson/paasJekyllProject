---
title: Use our Heroku api
permalink: /pages/api/
---

<script>
    $("#javascriptOutput").after("I wrote this with Javascript")

    function async sendGetRequest(){
        var response = await fetch("https://passapiproject.herokuapp.com/api/v1/Uptime");
        var json = await response.json();
        $("#javascriptOutput").after(json)
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
