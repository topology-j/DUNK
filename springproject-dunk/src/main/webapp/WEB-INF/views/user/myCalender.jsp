<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="resources/js/myCalender.js" ></script>
<link rel="stylesheet" href="resources/css/myCalender.css">   

<div class="row">
	<div class="col">
	<div id="myCalender">
	        <table class="Calendar">
	            <thead>
	                <tr>
	                    <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
	                    <td colspan="5">
	                        <span id="calYear"></span>년
	                        <span id="calMonth"></span>월
	                    </td>
	                    <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
	                </tr>
	                <tr>
	                    <td>일</td>
	                    <td>월</td>
	                    <td>화</td>
	                    <td>수</td>
	                    <td>목</td>
	                    <td>금</td>
	                    <td>토</td>
	                </tr>
	            </thead>
	
	            <tbody>
	            </tbody>
	        </table>
	    </div>
	</div>
	<div class="col">
	</div>
</div>