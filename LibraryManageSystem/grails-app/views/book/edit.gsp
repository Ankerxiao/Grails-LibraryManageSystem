<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-book" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.book}" method="PUT">
                <g:hiddenField name="version" value="${this.book?.version}" />
                <fieldset class="form">
                    %{--<f:all bean="book"/>--}%
                    <f:field bean="book" property="name" label="书名">
                        <g:textField name="${property}" value="${value}"/>
                    </f:field>
                    <f:field bean="book" property="price" label="价格">
                        <g:textField name="${property}" value="${value}"/>
                    </f:field>
                    <f:field bean="book" property="bookVersion" label="版本">
                        <g:textField name="${property}" value="${value}"/>
                    </f:field>
                    <f:field bean="book" property="publishDate" label="出版日期">
                        <g:datePicker name="${property}" value="${value}"></g:datePicker>
                    </f:field>
                    <f:field bean="book" property="author" label="作者">
                        <g:select name="${property}" value="${value}" from="${Author}" optionKey="id" optionValue="name"></g:select>
                    </f:field>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>

    <script>

        var dd = document.getElementById('dd');
        dd.value = '2018-09-09';
        var ddd = (${book.publishDate}).format('yyyy');
        console.log(ddd);
    </script>
    </body>
</html>
