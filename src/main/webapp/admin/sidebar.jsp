<%@page import="dto.LoginUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="h-100 d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" >
  <hr>
  <ul class="nav nav-pills flex-column mb-auto">
    <li>
      <a href="/admin/dash/dashboard.jsp" class="nav-link text-white">
        대시보드
      </a>
    </li>
    <li>
      <a href="/admin/manage/user.jsp" class="nav-link text-white">
        회원정보관리
      </a>
    </li>
    <li>
      <a href="/admin/manage/seller.jsp" class="nav-link text-white">
        판매자정보관리
      </a>
    </li>
    <li>
      <a href="/admin/book/booklist.jsp" class="nav-link text-white">
        예약정보관리
      </a>
    </li>
  </ul>
  <hr>
  <div class="dropdown">
    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1"
      data-bs-toggle="dropdown" aria-expanded="false">
      <strong>관리자 이름</strong>
    </a>
    <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
      <li><a class="dropdown-item" href="#">New project...</a></li>
      <li><a class="dropdown-item" href="#">Settings</a></li>
      <li><a class="dropdown-item" href="#">Profile</a></li>
      <li>
        <hr class="dropdown-divider">
      </li>
      <li><a class="dropdown-item" href="#">Sign out</a></li>
    </ul>
  </div>
</div>



