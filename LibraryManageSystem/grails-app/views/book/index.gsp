<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-book" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:table collection="${bookList}" />--}%
            <h1 style="margin-left: 20px;color: rgb(0, 187, 192)">
                书籍列表
            </h1>
            <table>
                <tr>
                    <th>书名</th>
                    <th>作者</th>
                    <th>出版时间</th>
                    <th>价格</th>
                </tr>
                <g:each in="${bookList}" var="item">
                    <tr>
                        <td>
                            <g:link class="show" action="show" id="${item.id}" absolute="true" style="text-decoration: none">
                                ${item.name}
                            </g:link>
                        </td>
                        <td>${item.author.name}</td>
                        <td>${item.publishDate}</td>
                        <td>${item.price}</td>
                    </tr>
                </g:each>
            </table>
            <div class="pagination">
                <g:paginate total="${bookCount ?: 0}" />
            </div>
        </div>

    <script>


    </script>
    </body>
</html>