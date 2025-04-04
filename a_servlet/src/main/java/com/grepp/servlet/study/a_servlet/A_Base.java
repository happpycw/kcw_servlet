package com.grepp.servlet.study.a_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

// /request/* : request url 이 /request 로 시작하면 이 서블릿의 메서드를 호출
// *.com : .com 으로 끝나는 모든 요청을 처리
@WebServlet("/request/*")
public class A_Base extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String url = req.getRequestURI();
        String[] urlArr = url.split("/");

        switch (urlArr[urlArr.length - 1]) {
            case "get":
                testGet(req, resp);
                break;
            default:
                resp.setStatus(404);
        }
    }

    private static void testPost(HttpServletRequest req, HttpServletResponse resp)
        throws IOException {
        String name = req.getParameter("name");
        System.out.println(name);

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.write("<h1>hello servlet</h1>");
        out.write(name + "<h2>post 요청</h2>");
    }

    private static void testGet(HttpServletRequest req, HttpServletResponse resp)
        throws IOException {
        String name = req.getParameter("name");
        System.out.println(name);

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.write("<h1>hello servlet</h1>");
        out.write(name + "<h2>get 요청</h2>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String url = req.getRequestURI();
        String[] urlArr = url.split("/");

        switch (urlArr[urlArr.length - 1]) {
            case "post":
                testPost(req, resp);
                break;
            default:
                resp.setStatus(404);
        }
    }
}

