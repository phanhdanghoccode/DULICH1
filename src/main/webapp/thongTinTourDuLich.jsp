<%@page import="model.KhachHang"%>
<%@page import="model.DiaDiem"%>
<%@page import="database.DAODiaDiem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%> 

<%
    // Lấy ID địa điểm từ tham số request
    String diaDiemId = request.getParameter("id");

    // Kiểm tra ID có hợp lệ không
    DiaDiem Tour = null;
    if (diaDiemId != null && !diaDiemId.isEmpty()) {
        // Sử dụng DAO để lấy thông tin địa điểm từ CSDL
        DAODiaDiem daoDiaDiem = new DAODiaDiem();
        Tour = daoDiaDiem.selectById(new DiaDiem(diaDiemId));
    }

    // Nếu không tìm thấy thông tin, báo lỗi
    if (Tour == null) {
        out.println("<h3>Không tìm thấy thông tin địa điểm!</h3>");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bookstore</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
         <style>
        body {
            background-image: url('img/background.jpg'); /* Thay đổi đường dẫn theo ảnh của bạn */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
        </style>
        <style>


            .container {
                position: relative;
                margin-bottom: 200px; /* Tăng khoảng cách để timeline không đè lên bảng */
            }

            .timeline-container {
                position: relative;
                margin-bottom: 50px;
            }

            .card {
                position: relative;
                z-index: 10; /* Đặt bảng thông tin phía trên */
                background-color: white;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
            }

            .line {
                position: absolute;
                z-index: 0; /* Đường nối nằm dưới cùng */
            }

            .image-circle {
                width: 200px;
                height: 200px;
                border-radius: 50%;
                overflow: hidden;
                background: #f0f0f0;
                display: flex;
                align-items: center;
                justify-content: center;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .image-circle img {
                width: 100%;
                height: auto;
            }

            .timeline-text {
                font-size: 16px;
                font-weight: bold;
                margin: 10px;
            }
        </style>
    </head>
    <body>
        
        <jsp:include page="header.jsp" />

        <div class="container mt-4">
            <div class="row">
               
                <div class="col-lg-9">
                   
                    <div id="carouselExampleIndicators" class="carousel slide mb-4"
                         data-bs-ride="true">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="0" class="active" aria-current="true"
                                    aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="<%= Tour.getImg1()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= Tour.getImg3()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= Tour.getImg2()%>" class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>

                    <div class="container">
                        <div class="intro text-center">
                            <h2><%= Tour.getName()%></h2>
                            <p>

                                <%= Tour.getGioiThieu()%>

                            </p>
                        </div>
                        <div class="container "> 


                            <div class="info-box" style="position: absolute; top: 20px; left: 300px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3>7:00-8:30:</h3>
                                <h3><%= Tour.getDiadiem1()%> </h3>
                                <p>    <%= Tour.getMota_dd1()%></p>


                            </div>


                            <div class="timeline-container" style="top: 0px; left: 10px;">
                                <div class="timeline-text"> <%= Tour.getDiadiem1()%></div>
                                <div class="image-circle">
                                    <img src="<%= Tour.getImg_dd1()%>" alt="placeholder">
                                </div>
                            </div>

                            <div class="info-box" style="position: absolute; top: 340px; left: 10px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3>9:00-10:30 :</h3>
                                <h3><%= Tour.getDiadiem2()%></h3>
                                <p><%= Tour.getMota_dd2()%></p>
                                <h5>12:00 - Ăn trưa</h5>
                            </div>

                            <div class="timeline-container" style="top: 60px; left: 700px;">
                                <div class="image-circle">
                                    <img src="<%= Tour.getImg_dd2()%>" alt="placeholder">
                                </div>
                                <div class="timeline-text"><%= Tour.getDiadiem2()%></div>
                            </div>

                            <div class="info-box" style="position: absolute; top: 650px; left: 450px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3><%= Tour.getDiadiem3()%></h3>
                                <p><%= Tour.getMota_dd3()%></p>

                            </div>


                            <div class="timeline-container" style="top: 100px; left: 10px;">
                                <div class="timeline-text"><%= Tour.getDiadiem3()%></div>
                                <div class="image-circle">
                                    <img src="<%= Tour.getImg_dd3()%>" alt="placeholder">
                                </div>
                            </div>
                            <div class="timeline-container" style="top: 60px; left: 700px;">
                                <div class="image-circle">
                                    <img src="<%= Tour.getImg_dd4()%>" alt="placeholder">
                                </div>
                                <div class="timeline-text"><%= Tour.getDiadiem4()%></div>
                            </div>

                            <div class="info-box" style="position: absolute; top: 1000px; left: 20px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3><%= Tour.getDiadiem4()%></h3>
                                <p><%= Tour.getMota_dd4()%></p>

                            </div>






                         
                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 1200px;">
                                <svg viewBox="0 0 800 400" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 120 150 Q 200 270 480 290" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 500px;">
                                <svg viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 100 460 Q 180 340 480 350" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 1200px;">
                                <svg viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 150 550 Q 330 730 480 690" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                        </div>







                    </div>

                    <div class="container mt-4 position-relative">
                        <!-- Line 1 -->
                        <div class="position-absolute" style="top: 75px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                        <!-- Line 2 -->
                        <div class="position-absolute" style="top: 175px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                        <!-- Line 3 -->
                        <div class="position-absolute" style="top: 275px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                    </div>








                
                    <div class="container mt-5">
                        <div class="card shadow">
                            <div class="card-body">
                                <h5 class="card-title mb-4">Thông tin chung</h5>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>Giá tour:</strong> <%= Tour.getGiaTour()%> VND
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Ngày khả dụng:</strong> <%= Tour.getThoiGianDienRa()%>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Thời lượng:</strong> <%= Tour.getThoiLuong()%> giờ
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Địa chỉ:</strong> 
                                        <a href="<%= Tour.getLinkGGmap()%>" target="_blank" rel="noopener noreferrer">
                                            <%= Tour.getDiaDiem()%>
                                        </a>
                                    </li>
                                </ul>
                                <div class="text-center">
                                <a href="dattour.jsp?id=<%= Tour.getID() %>" class="btn btn-primary">Đặt Tour</a>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp" %>
    </body>
    </
