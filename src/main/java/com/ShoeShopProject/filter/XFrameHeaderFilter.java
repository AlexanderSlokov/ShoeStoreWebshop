package com.ShoeShopProject.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class XFrameHeaderFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        ((HttpServletResponse) resp).setHeader("x-frame-options", "SAMEORIGIN");
        chain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}
