<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-book" class="content scaffold-create" role="main">
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%

            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.book}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.book}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <h1 style="margin-left: 20px;color: rgb(0, 187, 192)">新增书籍</h1>
            <g:form controller="book" action="save" method="POST">
                <div class="form-group">
                    <label class="col-sm-2 control-label">书名</label>
                    <div class="col-sm-10">
                        <input type="text" name="book.name" class="form-control" placeholder="请输入书名">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">作者</label>
                    <div class="col-sm-10">
                        <g:select name="book.author" from="${Author}" optionKey="id" optionValue="name"></g:select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">出版日期</label>
                    <div class="col-sm-10">
                        <g:datePicker name="book.publishDate" precision="day" years="${2018..1840}"></g:datePicker>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">价格</label>
                    <div class="col-sm-10">
                        <input type="number" name="book.price" class="form-control" placeholder="请输入价格">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">版本</label>
                    <div class="col-sm-10">
                        <input type="text" name="book.bookVersion" class="form-control" placeholder="请输入版本">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-0 col-sm-5">
                        <button type="submit" class="btn btn-default">新增</button>
                    </div>
                </div>
            </g:form>


            %{--<fieldset class="buttons">--}%
                %{--<g:submitButton name="create" class="save" style="display: inline"--}%
                                %{--value="${message(code: 'default.button.create.label', default: 'Create')}"--}%
                %{--/>--}%
            %{--</fieldset>--}%

            %{--<g:form resource="${this.book}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="book"/>--}%
                    %{--<f:displayWidget bean="book" property="author.name" />--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        </div>
    </body>
</html>