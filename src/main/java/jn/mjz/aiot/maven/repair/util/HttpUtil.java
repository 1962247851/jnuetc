package jn.mjz.aiot.maven.repair.util;

import okhttp3.*;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import static okhttp3.internal.Util.EMPTY_REQUEST;

/**
 * @author 19622
 */
public class HttpUtil {
    private static OkHttpClient client;

    public static class Sync {

        /**
         * 同步post请求表单
         *
         * @param url    url
         * @param params 参数
         * @return 服务器响应
         */
        public static String post(String url, Map<String, Object> params) {
            String result = null;
            initClient();
            Request request = new Request.Builder()
                    .url(url)
                    .post(getRequestBody(params))
                    .build();
            Call call = client.newCall(request);
            try {
                Response response = call.execute();
                ResponseBody body = response.body();
                if (body != null) {
                    result = body.string();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return result;
        }

        /**
         * 同步post请求字符串
         *
         * @param url   url
         * @param param 字符串
         * @return 服务器响应
         */
        public static String postString(String url, String param) {
            String result = null;
            initClient();
            Request request = new Request.Builder()
                    .url(url)
                    .post(RequestBody.create(MediaType.parse("application/x-www-form-urlencoded;charset=utf-8"), param))
                    .build();

            Call call = client.newCall(request);
            try {
                Response response = call.execute();
                ResponseBody body = response.body();
                if (body != null) {
                    result = body.string();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return result;
        }
    }

    public static class AsyncPost {

        /**
         * 异步Post请求
         *
         * @param url      url
         * @param params   参数
         * @param callback 回调
         */
        public static void haveResponse(String url, Map<String, Object> params, final HttpUtilCallBack<String> callback) {
            initClient();

            Request request = new Request.Builder()
                    .url(url)
                    .post(getRequestBody(params))
                    .build();

            client.newCall(request).enqueue(new Callback() {
                @Override
                public void onFailure(Call call, final IOException e) {
                    new Thread(() -> callback.onFailure(e)).run();
                }

                @Override
                public void onResponse(final Call call, final Response response) throws IOException {
                    if (response.isSuccessful()) {
                        final String result = response.body() == null ? null : response.body().string();
                        new Thread(() -> callback.onResponse(response, result)).run();
                    }
                }
            });
        }

    }

    public static class AsyncGet {

        /**
         * 异步Get请求
         *
         * @param url      url
         * @param callback 回调
         */
        public static void haveResponse(String url, final HttpUtilCallBack<String> callback) {

            initClient();

            Request request = new Request.Builder()
                    .url(url)
                    .build();

            client.newCall(request).enqueue(new Callback() {
                @Override
                public void onFailure(Call call, final IOException e) {
                    callback.onFailure(e);
                }

                @Override
                public void onResponse(Call call, final Response response) throws IOException {
                    String result = response.body() == null ? null : response.body().string();
                    callback.onResponse(response, result);
                }

            });
        }
    }

    public interface HttpUtilCallBack<T> {
        /**
         * 收到响应
         *
         * @param response 响应
         * @param result   响应体
         */
        void onResponse(Response response, T result);

        /**
         * 请求失败
         *
         * @param e 错误
         */
        void onFailure(IOException e);
    }

    /**
     * 初始化请求客户端
     */
    private static void initClient() {
        if (client == null) {
            client = new OkHttpClient().newBuilder()
                    .retryOnConnectionFailure(true)
                    .connectTimeout(10, TimeUnit.SECONDS)
                    .readTimeout(10, TimeUnit.SECONDS)
                    .writeTimeout(10, TimeUnit.SECONDS)
                    .build();
        }
    }

    /**
     * 生成RequestBody
     *
     * @param params 参数
     * @return RequestBody
     */
    private static RequestBody getRequestBody(Map<String, Object> params) {
        RequestBody body = EMPTY_REQUEST;
        if (null != params && !params.isEmpty()) {
            FormBody.Builder builder = new FormBody.Builder();
            for (String key : params.keySet()) {
                builder.add(key, params.get(key).toString());
            }
            body = builder.build();
        }
        return body;
    }
}
