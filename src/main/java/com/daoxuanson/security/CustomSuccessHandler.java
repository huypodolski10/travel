package com.daoxuanson.security;

import com.daoxuanson.constant.Constant;
import com.daoxuanson.utils.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        String targetUrl = determineTargetUrl(authentication);

        if (response.isCommitted()) {
            return;
        }

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }

    private String determineTargetUrl(Authentication authentication) {
        String url = "";
        Set<GrantedAuthority> grantedAuthorities = authentication.getAuthorities().stream().collect(Collectors.toSet());

        if (isUser(grantedAuthorities)) {
            url = Constant.WEB;
        }

        if (isAdmin(grantedAuthorities)) {
            url = Constant.ADMIN_HOME;
        }

        return url;
    }

    private boolean isUser(Set<GrantedAuthority> grantedAuthorities) {
        return grantedAuthorities.stream().anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_USER"));
    }

    private boolean isAdmin(Set<GrantedAuthority> grantedAuthorities) {
        return grantedAuthorities.stream().anyMatch(grantedAuthority -> grantedAuthority.getAuthority().equals("ROLE_ADMIN"));
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        handle(httpServletRequest, httpServletResponse, authentication);
    }
}
