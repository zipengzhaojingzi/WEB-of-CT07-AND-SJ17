//package com.ruoyi.web.controller.system;
//
//import com.alibaba.druid.support.json.JSONUtils;
//import com.alibaba.fastjson2.JSONObject;
//import com.ruoyi.common.core.domain.AjaxResult;
//import com.ruoyi.common.utils.SecurityUtils;
//import okhttp3.*;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.servlet.http.HttpServletRequest;
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;
//
//@RestController
//public class TestController {
//
//    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
//    public static final String BASE_URL = "http://localhost:8080";
//    private OkHttpClient client = new OkHttpClient();
//
//    @RequestMapping("/test")
//    public AjaxResult test(@org.springframework.web.bind.annotation.RequestBody ControllerInfo info, HttpServletRequest req) {
//        if (null == info.getRequestJson() || "".equalsIgnoreCase(info.getRequestJson().trim()))
//            info.setRequestJson("{}");
//        if (null == info.getRequestMethod()) {
//            info.setRequestMethod("GET");
//        }
//        Request request;
//        String token = req.getHeader("Authorization");
//        System.out.println(token);
//        if ("GET".equalsIgnoreCase(info.getRequestMethod())) {
//            request = new Request.Builder()
//                    .url(BASE_URL+info.getUrl())
//                    .addHeader("Authorization", token)
//                    .build();
//        }else if ("POST".equalsIgnoreCase(info.getRequestMethod())) {
//            RequestBody body = RequestBody.create(JSON, info.getRequestJson());
//            request = new Request.Builder()
//                    .url(BASE_URL+info.getUrl())
//                    .addHeader("Authorization", token)
//                    .addHeader("ContentType", "application/json")
//                    .post(body)
//                    .build();
//        }else if ("PUT".equalsIgnoreCase(info.getRequestMethod())) {
//            RequestBody body = RequestBody.create(JSON, info.getRequestJson());
//            request = new Request.Builder()
//                    .url(BASE_URL+info.getUrl())
//                    .put(body)
//                    .addHeader("Authorization", token)
//                    .build();
//        }else if ("DELETE".equalsIgnoreCase(info.getRequestMethod())) {
//            RequestBody body = RequestBody.create(JSON, info.getRequestJson());
//            request = new Request.Builder()
//                    .url(BASE_URL+info.getUrl())
//                    .delete(body)
//                    .addHeader("Authorization", token)
//                    .build();
//        }else {
//            RequestBody body = RequestBody.create(JSON, info.getRequestJson());
//            request = new Request.Builder()
//                    .url(BASE_URL+info.getUrl())
//                    .post(body)
//                    .addHeader("Authorization", token)
//                    .build();
//        }
//
//
//        try {
//            //同步
//            Response response = client.newCall(request).execute();
//            if (response.isSuccessful()) {
//                return AjaxResult.success(response.body().string());
//            }else {
//                return AjaxResult.error("Unexpected code " + response);
//            }
//        } catch (IOException e) {
//            return AjaxResult.error("IOException： " + e.getMessage());
//        }
//    }
//}
