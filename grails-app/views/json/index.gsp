<%--
  Created by IntelliJ IDEA.
  User: davec
  Date: 12-06-05
  Time: 6:31 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <table>
        <tr>
            <th>oid</th><th>database</th><th>owner</th><th>encoding</th>
        </tr>
     <g:each in="${databases}" var='database' >
         <tr>
             <td>
             ${database.oid}
             </td>
             <td>
             ${database.datname}
             </td>
             <td>
             ${database.rolname}
             </td>
             <td>
             ${database.encoding}
             </td>

         </tr>
     </g:each>
    </table>
</body>
</html>