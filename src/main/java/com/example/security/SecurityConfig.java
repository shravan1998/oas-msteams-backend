package com.example.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.savedrequest.NullRequestCache;
import org.springframework.session.ExpiringSession;
import org.springframework.session.MapSessionRepository;
import org.springframework.session.SessionRepository;
import org.springframework.session.config.annotation.web.http.EnableSpringHttpSession;
import org.springframework.session.web.http.HeaderHttpSessionStrategy;
import org.springframework.session.web.http.HttpSessionStrategy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Configuration
@EnableWebSecurity
//comment @EnableSpringHttpSession if you enable redis session
@EnableSpringHttpSession

public class SecurityConfig extends WebSecurityConfigurerAdapter {
    public static final int SESSION_EXPIRY_SECS = 30 * 60; //15mins
    @Autowired
    AuthenticationService authenticationService;

    @Autowired
    private AuthenticationEntryPoint authEntryPoint;

    /**
     * comment below [inmemorySessionRepository] method if using redis session management repository
     *
     * @return
     */
    @Bean
    SessionRepository<ExpiringSession> inmemorySessionRepository() {
        MapSessionRepository msr = new MapSessionRepository();
        msr.setDefaultMaxInactiveInterval(SESSION_EXPIRY_SECS);
        return msr;
    }

    /**
     * comment below[httpSessionStrategy] method if using redis session management repository
     */
    @Bean
    public HttpSessionStrategy httpSessionStrategy() {
        return new HeaderHttpSessionStrategy();
    }

    //uncomment [httpSessionIdResolver] to enable redis session
    /*

    @Bean
    public HttpSessionIdResolver httpSessionIdResolver() {
        return HeaderHttpSessionIdResolver.xAuthToken();
    }
    */

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(authenticationService).passwordEncoder(new BCryptPasswordEncoder());
    }

//    @Override
//    public void configure(WebSecurity web) throws Exception {
//        web.ignoring().antMatchers(HttpMethod.OPTIONS, "/**");
//    }

//    @Bean
//    public SessionRegistry sessionRegistry() {
//        return new SessionRegistryImpl();
//    }

//    @Bean
//    public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher() {
//        return new ServletListenerRegistrationBean<HttpSessionEventPublisher>(new HttpSessionEventPublisher());
//    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .cors().and()
                .anonymous()

                .and()
                .authorizeRequests()
//                .requestMatchers(PathRequest.toStaticResources().atCommonLocations()).permitAll()

                .antMatchers("/logout").permitAll()

                .antMatchers("/login").permitAll()


                .antMatchers("/").permitAll()
//                .antMatchers("/**/app/get-active-sessions").permitAll()
//                .antMatchers("/**/app/kill-sessions").permitAll()
                .and()
                .authorizeRequests()
                //.antMatchers("/**/admin/**").hasRole(Constants.ROLE_ADMIN)
                .anyRequest().authenticated()
                .and()
//                .logout().logoutRequestMatcher(new AntPathRequestMatcher("**/logout", "POST", false)).invalidateHttpSession(true)
//                .logoutSuccessHandler(
//                        (httpServletRequest, httpServletResponse, authentication) -> {
//
//                            httpServletResponse.setHeader("Content-Type", "application/json");
//                            httpServletResponse.getWriter().print("{\"result\":true}");
//
//                        }
//                )
                //  .and()
                .exceptionHandling().accessDeniedHandler(
                new AccessDeniedHandler() {
                    @Override
                    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException, ServletException {
                        httpServletResponse.sendError(HttpStatus.UNAUTHORIZED.value());
                    }
                }
        )
                .and()
//                .formLogin().loginPage("/").permitAll()
//                .and()
                .requestCache()
                .requestCache(new NullRequestCache())
                .and().csrf().disable()
                .httpBasic()
                .authenticationEntryPoint(authEntryPoint)
//                .and()
//                .sessionManagement()
//                .maximumSessions(-1)
//                .sessionRegistry(sessionRegistry())
        ;
    }

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//                .authorizeRequests()
//               .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
//                .anyRequest().authenticated()
//                .and()
//                .requestCache()
//                .requestCache(new NullRequestCache())
//                .and()
//                .csrf().disable()
//                .httpBasic();
//                //.authenticationEntryPoint(authEntryPoint);
//
//    }

//    @Bean
//    public FilterRegistrationBean corsFilter() {
//        final UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        CorsConfiguration config = new CorsConfiguration();
//        config.setAllowCredentials(true);
//        config.addAllowedOrigin("*"); // @Value: http://localhost:8080
//        config.addAllowedHeader("*");
//        config.addAllowedMethod("*");
//        source.registerCorsConfiguration("/**", config);
//        FilterRegistrationBean bean = new FilterRegistrationBean(new CorsFilter(source));
//        bean.setOrder(0);
//        return bean;
//    }

//    @Bean
//    CorsConfigurationSource corsConfigurationSource() {
//        CorsConfiguration configuration = new CorsConfiguration();
//        configuration.setAllowedOrigins(Arrays.asList("*"));
//        configuration.setAllowedMethods(Arrays.asList("GET","POST","DELETE","PUT","OPTIONS"));
//        configuration.setAllowedHeaders(Arrays.asList("*"));
//        configuration.setAllowCredentials(true);
//        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
//        source.registerCorsConfiguration("/**", configuration);
//        return source;
//    }


//    @Override
//    public void configure(WebSecurity web) throws Exception {
//        web
//                .ignoring()
//                .antMatchers("/**/resources/**");
//    }
}
