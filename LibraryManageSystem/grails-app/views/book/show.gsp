<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-book" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:display bean="book" />--}%


            <dl style="text-align: center">
                <dt>书名</dt>
                <dd>${book.name}</dd>

                <dt>作者</dt>
                <dd>
                    <g:link class="show" controller="author" action="show" id="${book.author.id}" absolute="true" style="text-decoration: none">
                        ${book.author.name}
                    </g:link>
                </dd>

                <dt>出版日期</dt>
                <dd>
                    <g:formatDate format="yyyy/MM/dd" date="${book.publishDate}" />
                </dd>
            </dl>

            %{--<ol style="list-style-type: disc; text-align: center; text-indent: 50px">--}%
                %{--<li>--}%
                    %{--<div style="display: inline">书名</div>--}%
                    %{--<f:display bean="book" property="name"/></li>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<div style="display: inline">版本</div>--}%
                    %{--<f:display bean="book" property="bookVersion"/></li>--}%
                %{--<li>--}%
                    %{--<div style="display: inline;">价格</div>--}%
                    %{--<f:display bean="book" property="price"/></li>--}%
                %{--<li>--}%
                    %{--<div style="display: inline;">出版日期</div>--}%
                    %{--<f:display bean="book" property="publishDate">--}%
                        %{--<g:formatDate format="yyyy/MM/dd" date="${value}"/>--}%
                    %{--</f:display>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<div style="display: inline;">作者</div>--}%
                    %{--<f:display bean="book" property="author">--}%
                        %{--<g:link class="author" controller="author" action="show" id="${value.id}" absolute="true"--}%
                                %{--style="text-decoration: none">--}%
                            %{--${value.name}--}%
                        %{--</g:link>--}%
                    %{--</f:display>--}%
                %{--</li>--}%
            %{--</ol>--}%


            <g:form resource="${this.book}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.book}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
