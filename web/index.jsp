<%-- 
    Document   : index
    Created on : May 3, 2021, 2:08:48 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meme Generator</title>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body class="bg-indigo-500">
        <div class="w-full flex justify-center mt-5">
            <button onclick="location.href = 'create.jsp'"
                class="text-white bg-indigo-700 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg mt-3"
                >
                Create Memes
            </button>
        </div>
        <div class="grid grid-cols-3 gap-2 m-5 xl:grid-cols-5">
            ${templates}
        </div>
    </body>
</html>
