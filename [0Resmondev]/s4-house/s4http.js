const port = 8124;
const host = "127.0.0.1";
 
var http = require('http');
var fs = require('fs');
var os = require('os');
var formidable = require('formidable');
var path = require('path');
 
var PubPath = GetResourcePath(GetCurrentResourceName()).replace("//", "/");
var dir = path.join(PubPath, 'public');
 
var mime = {
    html: 'text/html',
    txt: 'text/plain',
    css: 'text/css',
    gif: 'image/gif',
    jpg: 'image/jpeg',
    png: 'image/png',
    svg: 'image/svg+xml',
    js: 'application/javascript'
};

var server = http.createServer(function  (req, res) {
    var reqpath = req.url.toString().split('?')[0];
    
    if (req.method !== 'GET' && req.method !== 'POST') {
        res.statusCode = 501;
        res.setHeader('Content-Type', 'text/plain');
        return res.end('Method not implemented');
    }
    var file = path.join(dir, reqpath.replace(/\/$/, '/index.html'));
    if (file.indexOf(dir + path.sep) !== 0) {
        res.statusCode = 403;
        res.setHeader('Content-Type', 'text/plain');
        return res.end('Forbidden');
    }
    if(req.url.includes("/house/")) {
        params = URLToArray(req.url)
        res.setHeader('Content-Type', 'text/html');
        return res.end(House(params));
    }
    if(req.url.includes("/auth")) {
       
        var form = new formidable.IncomingForm();
        form.parse(req, async function (err, fields, files) {
            if(fields) {
                auth = false
                try {
                    auth = await getAuth(fields);
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    return res.end(`${auth}`);
                }catch(xr) {
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    return res.end(`${auth}`);
                }
            }
        });

    
    } else if(req.url.includes("/getinfo")) {
        var form = new formidable.IncomingForm();
        form.parse(req, async function (err, fields, files) {
            if(fields) {
                try {
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    info = await getinfo(fields);
                    return res.end(JSON.stringify(info));
                }catch(xr) {
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    return res.end('Error');
                }
            }
        });
    } else if(req.url.includes("/SetName")) {
        var form = new formidable.IncomingForm();
        form.parse(req, async function (err, fields, files) {
            if(fields) {
                try {
                    emit("s4-house:http:SetName", fields.id, fields.identifier, fields.name);
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    return res.end("OK!");
                }catch(xr) {
                    res.setHeader('Content-Type', 'application/json; charset=utf-8');
                    return res.end('Error');
                }
            }
        });
    } else {
    
    var type = mime[path.extname(file).slice(1)] || 'text/plain';
  
    var s = fs.createReadStream(file);
    s.on('open', function () {
        res.setHeader('Content-Type', type);
        s.pipe(res);
    });
    s.on('error', function () {
        res.setHeader('Content-Type', 'text/html');
        res.statusCode = 404;
        res.end('<center><h1>S4HTTP</h1><hr>S4Http/1.0.0 ('+os.type()+') Server at  Port '+port);
    });
    }
   
});

server.listen(port, function () {
   console.log('[S4-HOUSE] Listening on http://'+host+':'+port+'/');
});

 
function URLToArray(url) {
    var request = {};
    var pairs = url.substring(url.indexOf('?') + 1).split('&');
    for (var i = 0; i < pairs.length; i++) {
        if(!pairs[i])
            continue;
        var pair = pairs[i].split('=');
        request[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1]);
     }
     return request;
}


function getAuth(fields) {
    return new Promise(resolve => {
        emit("s4-house:auth", function(auth) {
            resolve(auth);
        }, fields);
    });
}

function getinfo(fields) {
    return new Promise(resolve => {
        emit("s4-house:getinfo", function(rps) {
            resolve(JSON.stringify(rps))
        }, fields);
    });
}




House = (context) => {
    
    return `
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Your House</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v6.0.0-beta3/css/all.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
        <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js" ></script>
        <script type="text/javascript">
            var id = "${context.id}";
            var identifier = "${context.identifier}";
            var hinfo = null;
            $.post("/auth", { id: id, identifier: identifier  }, function (data, textStatus, jqXHR) {
                  if(data == false) {  $("body").html("");  }else {
                    $.post("/getinfo", { id: id, identifier: identifier  }, function (info) { 
                            hinfo = JSON.parse(info);
                            $(".main").append('<iframe id="map_frame" src="https://cokluk.com/maps/?'+hinfo.coord.x+'='+hinfo.coord.y+'" ></iframe>');
                            INIT();
                   });
                  }
            });
            $(document).ready(function() {
                $(document).on('click','.item',function(){ __click_($(this)); });
                $(document).on('click','.x-link',function(){ __click_($(this)); });
                $(document).on('click','a',function(){ __click_($(this)); });
            });
            __click_ = async (x) => {
                switch(x.data("s4")) {
                    case "hname":
                        $.post("/SetName", { id: id, identifier: identifier, name: $("#_hname").val()  }, function(x){ 
                            alert("House name changed successfully!");
                        });
                    break;
                    case "walls":
                        // $(".main").hide("fade");
                        // $(".x-link").html("<w><i class='far fa-chevron-left'></i></w>  BACK</h1>");
                        alert("This feature will be brought with the update!");
                    break;
                    case "tables":
                        // $(".main").hide("fade");
                        // $(".x-link").html("<w><i class='far fa-chevron-left'></i></w>  BACK</h1>");
                        alert("This feature will be brought with the update!");
                    break;
                    case "name":
                        $(".main").hide("fade");
                        $(".hname").show("fade");
                        $(".x-link").html("<w><i class='far fa-chevron-left'></i></w>  BACK</h1>");
                    break;
                    case "garage":
                        $(".main").hide("fade");
                        $(".garage").show("fade");
                        $(".x-link").html("<w><i class='far fa-chevron-left'></i></w>  BACK</h1>");
                    break;
                    case "back":
                        $(".garage").hide("fade");
                        $(".hname").hide("fade");
                        $(".main").show("fade");
                        $(".x-link").html("<w>MANAGE</w>  YOUR HOUSE</h1>");
                    break;
                }
            }
        </script>
        <script src="../house.js"></script>

    </head>

        <body align="center">
            
            <div style="display:none;">
                <hid id="hid">${context.id}</hid>
                <identifier id="identifier">${context.identifier}</identifier>
            </div>
            
            <center><h1 class="x-link" data-s4="back"><w>MANAGE</w>  YOUR HOUSE</h1></center>
            <div class="main" >
                <div class="item" data-s4="walls">
                    <i class="fas fa-chimney"></i>
                </div>
            
                <div class="item" data-s4="tables">
                        <i class="fa-sharp fa-solid fa-image"></i>
                </div>
            
                <div class="item" data-s4="name">
                        <i class="fa-light fa-input-text"></i>
                </div>   
        
                <div class="item" data-s4="garage">
                    <i class="fas fa-garage-open"></i>
                </div>
            </div>

            <div class="garage" style="display:none;">
                
                 
            </div>

            <div class="hname" style="display:none;">
                <h2>Enter New House Name</h2>
                <input type="text" max="10" maxlength="10" id="_hname" placeholder="Enter Name..." />
                <a data-s4="hname" href="#">Change</a>
            </div>
        </body>
 
        <style>
        .garage {
            border: 1px solid white;
            min-height: 90vh;
            overflow-x: hidden;
            overflow-y: scroll;
        }

        .hname h2 {
            width: -webkit-fill-available;
            margin-left: 5%;
            margin-right: 5%;
            padding: 10px;
            font-size: 40px;
            background: unset;
            color: white;
            font-family: 'Bebas Nue';
            font-style: italic;
        }

        .car img {
            width: -webkit-fill-available;
            margin: 5%;
        }

        .car {
            width: -webkit-fill-available;
            position: relative;
            min-height: 28vh;
            border: 1px solid white;
            margin: 4%;
        }

        .car h2 {
            position: absolute;
            color: black;
            bottom: 0;
            font-size: 4vh;
            margin: 0;
            text-align: center;
            width: -webkit-fill-available;
            font-family: 'Bebas Nue';
            text-transform: uppercase;
            background: white;
        }

        .hname a {
            width: 100%;
            position: absolute;
            bottom: 0;
            text-align: center;
            display: block;
            color: black;
            text-shadow: 0px 0px 20px black;
            font-family: 'Bebas Nue';
            font-size: 38px;
            text-transform: uppercase;
            font-style: italic;
            font-weight: 800;
            text-decoration: unset;
            background: white;
            transition: .6s;
            letter-spacing: 2px;
        }

        .hname a:hover {
            background: black;
            color: white;
            text-shadow: 0px 0px 20px white;
        }
 
        .hname input {
            width: -webkit-fill-available;
            margin-left: 5%;
            margin-right: 5%;
            padding: 10px;
            font-size: 40px;
            background: unset;
            border: 2px solid white;
            color: white;
        }

        .hname {
            z-index: 1000;
            width: -webkit-fill-available;
            margin: 2%;
            height: 50%;
            position: absolute;
            background: #000000a3;
            backdrop-filter: blur(5px);
            box-shadow: 0px 0px 18px 1px black;
            border: 2px solid #ffffffad;
        }
 
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Regular.ttf") format("truetype")
        }
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Thin.ttf") format("truetype");
            font-weight:100
        }
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Light.ttf") format("truetype");
            font-weight:200
        }
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Middle.ttf") format("truetype");
            font-weight:300
        }
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Italic.ttf") format("truetype");
            font-style:italic
        }
        @font-face{
            font-family:"Bebas Nue";
            src:url("/fonts/BebasNeuePro-Bold.ttf") format("truetype");
            font-weight:700
        }
      
            body {
                background: black;
            }
            iframe {
                position: absolute;
                bottom: 0;
                left: 0;
                width: -webkit-fill-available;
                height: 40vh;
                border: unset;
            }
            w {
                background: white;
                padding-left: 10px;
                padding-right: 10px;
                color: black;
                text-shadow: 0px 0px 0px black;
            }
    
            h1 {
                font-family: 'Bebas Nue';
                color: white;
                text-transform: uppercase;
                font-size: 4vh;
                letter-spacing: 8px;
                width: fit-content;
                background: red;
                
            }
    
             .item { 
                color: white;
                width: 45%;
                float: left;
                border: 1px solid;
                margin-left: 3.5%;
                font-size: 10vh;
                padding-top: 2vh;
                padding-bottom: 2vh;
                margin-top: 2%;
                transition: .2s;
             }
    
             .item:hover {
                background: white;
                color: black;
             }
        </style>
    </html>
    `;
}