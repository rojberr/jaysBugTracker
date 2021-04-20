<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Beetle Tracker - Open Source Issue and Bug Tracker"/>
    <meta name="author" content="Rojberr, Michal & other Contributors"/>
    <meta name="keyword" content="Bootstrap,Bug,Tracker,Open,Source,Issues, Issue,jQuery,CSS,HTML,RWD,Dashboard"/>
    <title>Add issue</title>
    <!-- Favicon-->
    <%@include file="../headLinks.jsp"%>
</head>
<body id="page-top">
<!-- Navigation-->
<%@include file="../beetleHeader.jsp"%>

<section id="add-issue" style="margin-top: 200px;">
    <div class="container">
        <!-- Contact Section Heading-->
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Add Issue</h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-bug"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Add Issue Section Form-->
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19.-->
                <form:form id="issueForm" name="addIssue" method="post" modelAttribute="issue">
                    <div class="card">
                        <div class="card-header"><strong>Issue</strong> <small>Form</small></div>
                        <div class="card-body">
                            <!-- /.row-->
                            <div class="row">
                                <div class="form-group col-sm-8">
                                    <form:select path="categoryId" cssClass="form-control" items="${categories}" itemLabel="category" itemValue="id"/>
                                </div>
                            </div>
                            <!-- /.row-->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="subject">Subject</label>
                                        <form:input path="subject" cssClass="form-control" type="text" placeholder="Enter subject"/>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row-->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="description">Description</label>
                                        <form:textarea path="description" cssClass="form-control" name="issue-description" rows="9" placeholder="Description.."/>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-block btn-primary">Send</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>





<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Footer Location-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Made by</h4>
                <p class="lead mb-0">
                    <a href="<c:url value="https://drzymala.dev/"/>">Rojberr</a>
                    <br />
                    <a href="<c:url value="https://github.com/rojberr/beetle-tracker"/>">Git-Hub Contributors</a>
                </p>
            </div>
            <!-- Footer Social Icons-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Around the Web</h4>
                <a class="btn btn-outline-light btn-social mx-1" href="<c:url value="https://github.com/rojberr/beetle-tracker"/>"><i class="fab fa-fw fa-github"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="<c:url value="https://www.oracle.com/java/"/>"><i class="fab fa-java"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="<c:url value="https://beetle-tracker.herokuapp.com/home"/>"><i class="fas fa-bug"></i></a>
            </div>
            <!-- Footer About Text-->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">About Beetle Tracker</h4>
                <p class="lead mb-0">
                    Beetle Tracker is a free to use, MIT licensed app created by many
                    <a href="<c:url value="https://github.com/rojberr/beetle-tracker"/>">Git-Hub contributors</a>
                    .
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Copyright Section-->
<div class="copyright py-4 text-center text-white">
    <div class="container"><small>MIT Licensed Copyright © BeetleTracker 2021</small></div>
</div>
<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
<div class="scroll-to-top d-lg-none position-fixed">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
</div>
<!-- Portfolio Modals-->
<!-- Portfolio Modal 1-->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body text-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <!-- Portfolio Modal - Title-->
                            <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">Beetle Tracker Online</h2>
                            <!-- Icon Divider-->
                            <div class="divider-custom">
                                <div class="divider-custom-line"></div>
                                <div class="divider-custom-icon"><i class="fas fa-bug"></i></div>
                                <div class="divider-custom-line"></div>
                            </div>
                            <!-- Portfolio Modal - Image-->
                            <img class="img-fluid rounded mb-5" src="<c:url value="/assets/img/portfolio/cabin.png"/>" alt="" />
                            <!-- Portfolio Modal - Text-->
                            <p class="mb-5">To use Bettle Tracker Online simply click on the button and log in.</p>
                            <button class="btn btn-primary" data-dismiss="modal">
                                <i class="fas fa-times fa-fw"></i>
                                Close Window
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Portfolio Modal 2-->
<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body text-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <!-- Portfolio Modal - Title-->
                            <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">Download and host it yourself</h2>
                            <!-- Icon Divider-->
                            <div class="divider-custom">
                                <div class="divider-custom-line"></div>
                                <div class="divider-custom-icon"><i class="fas fa-bug"></i></div>
                                <div class="divider-custom-line"></div>
                            </div>
                            <!-- Portfolio Modal - Image-->
                            <img class="img-fluid rounded mb-5" src="<c:url value="/assets/img/portfolio/cake.png"/>" alt="" />
                            <!-- Portfolio Modal - Text-->
                            <p class="mb-5">To host it yourself to <a href="<c:url value="https://github.com/rojberr/beetle-tracker"/>">the Git-Hub page</a> and follow instructions.</p>
                            <button class="btn btn-primary" data-dismiss="modal">
                                <i class="fas fa-times fa-fw"></i>
                                Close Window
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"/>"></script>
<script src="<c:url value="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"/>"></script>
<!-- Third party plugin JS-->
<script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"/>"></script>
<!-- Contact form JS-->
<script src="<c:url value="/assets/mail/jqBootstrapValidation.js"/>"></script>
<script src="<c:url value="/assets/mail/contact_me.js"/>"></script>
<!-- Core theme JS-->
<script src="<c:url value="/js/scripts.js"/>"></script>
</body>
</html>
