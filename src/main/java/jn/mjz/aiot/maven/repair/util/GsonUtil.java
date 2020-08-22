package jn.mjz.aiot.maven.repair.util;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 19622
 */
public class GsonUtil {
    private static Gson instance;

    public static Gson getInstance() {
        if (instance == null) {
            instance = new Gson();
        }
        return instance;
    }

    public static <T> List<T> parseJsonArray2ObjectList(String result, Class<T> className) {
        List<T> list = new ArrayList<>();
        //Json的解析类对象
        //将JSON的String 转成一个JsonArray对象
        JsonArray jsonArray = JsonParser.parseString(result).getAsJsonArray();
        //加强for循环遍历JsonArray
        for (JsonElement c : jsonArray) {
            //使用GSON，直接转成Bean对象
            list.add(getInstance().fromJson(c, className));
        }
        return list;
    }

}
