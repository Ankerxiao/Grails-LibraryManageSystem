<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-author" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:table collection="${authorList}" />--}%

            <h1 style="margin-left: 20px;color: rgb(0, 187, 192)">
                作者列表
            </h1>
            <table>
                <tr>
                    <th>作者姓名</th>
                    <th>年龄</th>
                    <th>性别</th>
                    <th>职位</th>
                    <th>公司</th>
                    <th>地址</th>
                    <th>手机号码</th>
                </tr>
                <g:each in="${authorList}" var="item">
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.age}</td>
                        <td>${item.sex}</td>
                        <td>${item.job}</td>
                        <td>${item.company}</td>
                        <td>${item.address}</td>
                        <td>${item.phone}</td>
                    </tr>
                </g:each>
            </table>

            <div class="pagination">
                <g:paginate total="${authorCount ?: 0}" />
            </div>
        </div>
    </body>
</html>