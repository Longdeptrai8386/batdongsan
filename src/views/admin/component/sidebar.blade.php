<aside class="left-sidebar" data-sidebarbg="skin6">
    <!-- Sidebar Scroll -->
    <div class="scroll-sidebar" data-sidebarbg="skin6">
        <!-- Sidebar Navigation -->
        <nav class="sidebar-nav" role="navigation">
            <ul id="sidebarnav" class="sidebar-menu">
                <!-- Dashboard -->
                <li class="sidebar-item">
                    <a class="sidebar-link" href="{{ BASE_URL_ADMIN }}dashboard" aria-expanded="false">
                        <i data-feather="home" class="feather-icon"></i>
                        <span class="hide-menu">Dashboard</span>
                    </a>
                </li>

                <li class="list-divider"></li>
                
                <!-- Applications Section -->
                <li class="nav-small-cap">
                    <span class="hide-menu">Applications</span>
                </li>

                <!-- Article Section -->
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i data-feather="file-text" class="feather-icon"></i>
                        <span class="hide-menu">Article</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level base-level-line">
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}article-list" class="sidebar-link">
                                <span class="hide-menu">All Articles</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}article-form-add" class="sidebar-link">
                                <span class="hide-menu">Add Article</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- User Section -->
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i data-feather="users" class="feather-icon"></i>
                        <span class="hide-menu">User</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level base-level-line">
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}user-list" class="sidebar-link">
                                <span class="hide-menu">All Users</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Category Section -->
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i data-feather="layers" class="feather-icon"></i>
                        <span class="hide-menu">Category</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level base-level-line">
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}category-list" class="sidebar-link">
                                <span class="hide-menu">All Categories</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Comment Section -->
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i data-feather="message-circle" class="feather-icon"></i>
                        <span class="hide-menu">Comment</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level base-level-line">
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}comment-list" class="sidebar-link">
                                <span class="hide-menu">All Comments</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Coin Section -->
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i data-feather="dollar-sign" class="feather-icon"></i>
                        <span class="hide-menu">Coin</span>
                    </a>
                    <ul aria-expanded="false" class="collapse first-level base-level-line">
                        <li class="sidebar-item">
                            <a href="{{ BASE_URL_ADMIN }}coin-transactions" class="sidebar-link">
                                <span class="hide-menu">All Coins</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Logout -->
                <li class="sidebar-item">
                    <a class="sidebar-link" href="{{ BASE_URL_ADMIN }}logout" aria-expanded="false">
                        <i data-feather="log-out" class="feather-icon"></i>
                        <span class="hide-menu">Logout</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- End Sidebar Navigation -->
    </div>
    <!-- End Sidebar Scroll -->
</aside>
