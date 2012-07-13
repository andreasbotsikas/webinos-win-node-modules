Webinos node modules' source
===

This is an aggregation repository to gather all required by webinos, node modules’ source codes. The repositories that are linked are optimized to build on windows.

## Modules analysis

### Required by PZP

> https://github.com/andreasbotsikas/node-jsormdb.git
> https://github.com/developmentseed/node-sqlite3.git
> http://github.com/akidee/schema.js
> https://github.com/Worlize/WebSocket-Node.git (modified src/validation.cc to add NODE_MODULE(validation, init); at the end of the file, otherwise node couldn't load the module, check https://github.com/andreasbotsikas/WebSocket-Node/tree/windows-build. The change has been upstreamed)
> https://github.com/Flotype/now.git
>> Depends on -->
>>> https://github.com/LearnBoost/socket.io.git
>>>> Depends on -->
>>>>> https://github.com/LearnBoost/socket.io-client.git
>>>>>> Depends on --> 
>>>>>>> https://github.com/mishoo/UglifyJS.git
>>>>>>> https://github.com/felixge/node-active-x-obfuscator.git
>>>>>>>> Depends on -->
>>>>>>>>> https://github.com/qfox/ZeParser.git
>>> https://github.com/samshull/node-proxy.git (modified to support gyp. Check https://github.com/andreasbotsikas/node-proxy/tree/windows-build)
> https://github.com/Leonidas-from-XIV/node-xml2js.git
>> Depends on --> 
>>> https://github.com/isaacs/sax-js.git
> https://github.com/senchalabs/connect.git
>> Depends on --> 
>>> https://github.com/alexgorbatchev/node-crc.git 
>>> https://github.com/visionmedia/debug.git
>>> git://github.com/bentomas/node-mime.git

### Required by PZH

> https://github.com/havard/node-openid.git
> https://github.com/soldair/node-qrcode.git
>> Depends on -->
>>> https://github.com/LearnBoost/node-canvas.git (you will need GTK to build this library on windows. I have created a branch https://github.com/andreasbotsikas/node-canvas/tree/windows-build where I have added instructions on how to do so, plus I have added the binding.gyp file to automate the building process, using webinos-gyp make command). Pull request got through!
>>> https://github.com/Marak/colors.js.git
