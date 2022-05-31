---
to: ios/Classes/PdftronFlutterPlugin.h
after: Hygen Generated Method Parameters
inject: true
---
<% args = ''
   if (params !== '') {
     params
       .replace(/(?<=<)(.*?)(?=>)/g, '')
       .split(',')
       .forEach(param => {
         name = param.substring(param.indexOf(' ') + 1).trim()
         args += 'static NSString * const PT' + h.changeCase.pascalCase(name) + 'ArgumentKey = @"' + name + '";\n'
       })
     args = args.substring(0, args.length - 1)
   }
-%>
<%- args %><%- %>
