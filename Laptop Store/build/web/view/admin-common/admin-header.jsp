<%-- 
    Document   : admin-header
    Created on : Mar 17, 2025, 11:32:31 PM
    Author     : hungs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <header class="topbar">
        <div class="container-xxl">
            <div class="navbar-header">
                <div class="d-flex align-items-center gap-2">
                    <!-- Menu Toggle Button -->
                    <div class="topbar-item">
                        <button type="button" class="button-toggle-menu">
                            <iconify-icon
                                icon="iconamoon:menu-burger-horizontal"
                                class="fs-22"
                                ></iconify-icon>
                        </button>
                    </div>

                    <!-- App Search-->
                    <form class="app-search d-none d-md-block me-auto">
                        <div class="position-relative">
                            <input
                                type="search"
                                class="form-control"
                                placeholder="Search..."
                                autocomplete="off"
                                value=""
                                />
                            <iconify-icon
                                icon="iconamoon:search-duotone"
                                class="search-widget-icon"
                                ></iconify-icon>
                        </div>
                    </form>
                </div>

                <div class="d-flex align-items-center gap-1">
                    <!-- Theme Color (Light/Dark) -->
                    <div class="topbar-item">
                        <button
                            type="button"
                            class="topbar-button"
                            id="light-dark-mode"
                            >
                            <iconify-icon
                                icon="iconamoon:mode-dark-duotone"
                                class="fs-24 align-middle"
                                ></iconify-icon>
                        </button>
                    </div>

                    <!-- Category -->
                    <div class="dropdown topbar-item d-none d-lg-flex">
                        <button
                            type="button"
                            class="topbar-button"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            >
                            <iconify-icon
                                icon="iconamoon:apps"
                                class="fs-24 align-middle"
                                ></iconify-icon>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end p-0">
                            <div class="p-1">
                                <a
                                    class="dropdown-item py-2"
                                    href="javascript:void(0);"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/admin-assets/images/brands/github.svg"
                                        class="avatar-xs"
                                        alt="Github"
                                        />
                                    <span class="ms-2"
                                          >GitHub:
                                        <span class="fw-medium">@reback</span></span
                                    >
                                </a>
                                <a
                                    class="dropdown-item py-2"
                                    href="javascript:void(0);"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/admin-assets/images/brands/bitbucket.svg"
                                        class="avatar-xs"
                                        alt="bitbucket"
                                        />
                                    <span class="ms-2"
                                          >Bitbucket:
                                        <span class="fw-medium">@reback</span></span
                                    >
                                </a>
                                <a
                                    class="dropdown-item py-2"
                                    href="javascript:void(0);"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/admin-assets/images/brands/dribbble.svg"
                                        class="avatar-xs"
                                        alt="dribbble"
                                        />
                                    <span class="ms-2"
                                          >Dribbble:
                                        <span class="fw-medium"
                                              >@username</span
                                        ></span
                                    >
                                </a>

                                <a
                                    class="dropdown-item py-2"
                                    href="javascript:void(0);"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/admin-assets/images/brands/dropbox.svg"
                                        class="avatar-xs"
                                        alt="dropbox"
                                        />
                                    <span class="ms-2"
                                          >Dropbox:
                                        <span class="fw-medium"
                                              >@username</span
                                        ></span
                                    >
                                </a>

                                <a
                                    class="dropdown-item py-2"
                                    href="javascript:void(0);"
                                    >
                                    <img
                                        src="${pageContext.request.contextPath}/admin-assets/images/brands/slack.svg"
                                        class="avatar-xs"
                                        alt="mail_chimp"
                                        />
                                    <span class="ms-2"
                                          >Slack:
                                        <span class="fw-medium">@reback</span></span
                                    >
                                </a>
                            </div>
                        </div>
                    </div>


                    <!-- Theme Setting -->
                    <div class="topbar-item">
                        <button
                            type="button"
                            class="topbar-button"
                            id="theme-settings-btn"
                            data-bs-toggle="offcanvas"
                            data-bs-target="#theme-settings-offcanvas"
                            aria-controls="theme-settings-offcanvas"
                            >
                            <iconify-icon
                                icon="iconamoon:settings-duotone"
                                class="fs-24 align-middle"
                                ></iconify-icon>
                        </button>
                    </div>



                    <!-- User -->
                    <div class="dropdown topbar-item">
                        <a
                            type="button"
                            class="topbar-button"
                            id="page-header-user-dropdown"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                            >
                            <span class="d-flex align-items-center">
                                <img
                                    class="rounded-circle"
                                    width="32"
                                    src="${pageContext.request.contextPath}/admin-assets/images/users/avatar-1.jpg"
                                    alt="avatar-3"
                                    />
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <!-- item-->
                            <h6 class="dropdown-header">Welcome Gaston!</h6>
                            <a class="dropdown-item" href="pages-profile.html">
                                <i
                                    class="bx bx-user-circle text-muted fs-18 align-middle me-1"
                                    ></i
                                ><span class="align-middle">Profile</span>
                            </a>

                           
                            <div class="dropdown-divider my-1"></div>

                            <a
                                class="dropdown-item text-danger"
                                href="auth-signin.html"
                                >
                                <i class="bx bx-log-out fs-18 align-middle me-1"></i
                                ><span class="align-middle">Logout</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</html>
