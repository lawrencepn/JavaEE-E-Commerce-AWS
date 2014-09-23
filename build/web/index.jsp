<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 19 Sep 2014, 1:29:06 PM
    Author     : Lawrence
--%>
<%--<sql:query var="categories" dataSource="jdbc/affableBeanAmazon">
    SELECT * FROM category;
</sql:query>--%>
            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>[ welcome text ]</p>
                    
                    categoryImagePath: ${initParam.categoryImagePath}
                    productImagePath: ${initParam.productImagePath}
                </div>
            </div>

            <div id="indexRightColumn">
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <a href="category?${category.id}">
                            <span class="categoryLabelText">${category.name}</span>
                            <img src="${initParam.categoryImagePath}${category.name}.jpg" />
                        </a>
                    </div>
                    
                </c:forEach>
                
            </div>
                

        
