<%-- 
    Document   : create
    Created on : May 3, 2021, 3:32:50 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Custom</title>
        <link
            href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
            rel="stylesheet"
            />
    </head>
    <body class="h-screen">
        <div class="md:flex h-full">
            <div
                class="flex items-center justify-center w-full px-6 py-8 md:h-128 md:w-1/2"
                >
                <div class="max-w-xl">
                    <h2
                        class="text-2xl font-semibold text-gray-800 dark:text-white md:text-3xl"
                        >
                        Build Your New
                        <span class="text-indigo-600 dark:text-indigo-400">Idea</span>
                    </h2>

                    <label for="full-name" class="leading-7 text-sm text-gray-600"
                           >Url Image</label
                    >
                    <input
                        id="url"
                        value="${inintUrl}"
                        onchange="displayImg()"
                        type="text"
                        name="full-name"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"
                        />
                    <label for="full-name" class="leading-7 text-sm text-gray-600"
                           >Text Above</label
                    >
                    <input
                        id="above"
                        onchange="insertText()"
                        type="text"
                        name="full-name"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"
                        />

                    <label for="full-name" class="leading-7 text-sm text-gray-600"
                           >Text Bottom</label
                    >
                    <input
                        id="bottom"
                        onchange="insertText()"
                        type="text"
                        name="full-name"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"
                        />
                    <a id="download" href="#" download>
                        <button
                            class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg mt-3"
                            >
                            View Full Image 
                        </button>
                    </a>
                    <a href="/Meme" class="underline ml-2">Back to home</a>
                </div>
            </div>

            <div class="w-full h-64 md:w-1/2 md:h-auto bg-indigo-500">
                <div value="" id="preview" class="w-full h-full bg-contain bg-center bg-no-repeat" style="background-image: url(${inintUrl})">
                    <div class="w-full h-full bg-black opacity-25"></div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function displayImg() {
            document.getElementById("preview").style = "background-image: url(" + document.getElementById(
                    "url"
                    ).value + ")";
            document.getElementById("download").href = document.getElementById(
                    "url"
                    ).value;
        }

        function insertText() {
            var baseUrl = "https://api.memegen.link/images/custom/";
            var backGround = "background=" + document.getElementById("url").value;
            var above = document.getElementById("above");
            var bottom = document.getElementById("bottom");
            var newUrl = baseUrl;
            if (above === null) {
                above = "_";
            } else {
                above = above.value;
            }
            if (bottom === null) {
                bottom = "_";
            } else {
                bottom = bottom.value;
            }
            var newUrl = baseUrl + above + "/" + bottom + ".jpg?" + backGround;
            console.log(above);
            console.log(bottom);
            console.log(newUrl);
            document.getElementById("preview").style = "background-image: url(" + newUrl + ")";
            document.getElementById("download").href = newUrl;
        }
    </script>
</body>
</html>

