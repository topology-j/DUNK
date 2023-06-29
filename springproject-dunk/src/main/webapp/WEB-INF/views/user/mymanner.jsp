<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row mt-5">
	<div class="col-10 offset-1">
		<div class="row">
			<div class="col-3 border rounded-5 border-2 border-warning">
				<div class="row text-center my-5">
					<div class="col">
						<img src="resources/userimage/smile.png" style="width:200px;height:200px">
					</div>
				</div>
				<div class="row">
					<div class="col">
						&nbsp;&nbsp;&nbsp;<span class="fw-bold fs-4"><span class="text-danger">${sessionScope.nick}</span>님의 매너</span>
					</div>
				</div>
				<div class="row my-2">
					<div class="col">
						<div class="p-3 bg-secondary bg-opacity-10 rounded-start rounded-end">
						  	<div class="row">
						  		<div class="col-6">
						  			실력
						  		</div>
						  		<div class="col-6 text-end">
						  			${eList.get(0)}
						  		</div>
						  	</div>
						</div>
					</div>
				</div>
				<div class="row my-2">
					<div class="col">
						<div class="p-3 bg-secondary bg-opacity-10 rounded-start rounded-end">
						  	<div class="row">
						  		<div class="col-6">
						  			매너
						  		</div>
						  		<div class="col-6 text-end">
						  			${eList.get(1)}
						  		</div>
						  	</div>
						</div>
					</div>
				</div>
				<div class="row my-2">
					<div class="col">
						<div class="p-3 bg-secondary bg-opacity-10 rounded-start rounded-end">
						  	<div class="row">
						  		<div class="col-6">
						  			준비성
						  		</div>
						  		<div class="col-6 text-end">
						  			${eList.get(2)}
						  		</div>
						  	</div>
						</div>
					</div>
				</div>
				<div class="row my-2">
					<div class="col">
						<div class="p-3 bg-secondary bg-opacity-10 rounded-start rounded-end">
						  	<div class="row">
						  		<div class="col-6">
						  			시간약속
						  		</div>
						  		<div class="col-6 text-end">
						  			${eList.get(3)}
						  		</div>
						  	</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-9">				
				<div class="row">
					<div class="col-11 offset-1 border rounded-5 border-2 border-warning">
						
					</div>
				</div>				
			</div>
		</div>	
	</div>
	<div class="col-1">
	</div>
</div>