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
        color: #7979ab;
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
    async function sendPostRequest(){
        var response = await fetch("https://passapiproject.herokuapp.com/api/v1/Uptime",{
            headers:
            {
                "Access-Control-Allow-Origin": "https://passapiproject.herokuapp.com",
                'Content-Type': 'application/json'
            },
            method: "post",
            body: JSON.stringify(
            {
                State: 'From Jekyll'
            })
        });
    }
    async function sendDeleteRequest(){
        var response = await fetch("https://passapiproject.herokuapp.com/api/v1/Uptime",{
            headers:{ "Access-Control-Allow-Origin": "https://passapiproject.herokuapp.com" },
            method: "delete"
        });
    }
</script>

<button  onClick="sendGetRequest()">Get Info</button>
<button  onClick="sendPostRequest()">Post Info</button>
<button  onClick="sendDeleteRequest()">Delete All</button>

### Output:
<div id="javascriptOutput"></div>


