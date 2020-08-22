package jn.mjz.aiot.maven.repair.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtil {

    private Date date;

    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    public DateUtil(long paramLong) {
        this.date = new Date(paramLong);
    }

    public DateUtil(String s) {
        try {
            this.date = this.sdf.parse(s);
        } catch (ParseException paramString) {
            paramString.printStackTrace();
        }
    }

    public DateUtil(Timestamp timestamp) {
        try {
            this.date = timestamp;
        } catch (Exception paramTimestamp) {
            paramTimestamp.printStackTrace();
        }
    }

    public DateUtil(Date paramDate) {
        this.date = paramDate;
    }

    public static String getCurrentDate() {
        return (new DateUtil(getCurrentTimeMillis())).getDate();
    }

    public static String getCurrentDate(String paramString) {
        return (new DateUtil(getCurrentTimeMillis())).getDate(paramString);
    }

    public static String getCurrentDateTime() {
        return (new DateUtil(getCurrentTimeMillis())).toDateFormat();
    }

    public static String getCurrentTime() {
        return (new DateUtil(getCurrentTimeMillis())).getTime();
    }

    public static long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }

    public static String getDate(long paramLong) {
        return (new DateUtil(paramLong)).getDate();
    }

    public static String getDateAndTime(long timeStamp, String splitString) {
        StringBuilder stringBuilder = new StringBuilder();
        DateUtil dateUtil = new DateUtil(timeStamp);
        if (splitString == null) {
            stringBuilder.append(dateUtil.getDate());
            stringBuilder.append(dateUtil.getTime());
        } else {
            stringBuilder.append(dateUtil.getDate());
            stringBuilder.append(splitString);
            stringBuilder.append(dateUtil.getTime());
        }
        return stringBuilder.toString();
    }

    public static String getTime(long paramLong) {
        return (new DateUtil(paramLong)).getTime();
    }

    private long subInMilliSeconds(DateUtil paramDateUtil) {
        return getTimeMillis() - paramDateUtil.getTimeMillis();
    }

    public String getDate() {
        return toDateFormat("yyyy/MM/dd");
    }

    public String getDate(String paramString) {
        return toDateFormat(paramString);
    }

    public String getDateTime() {
        return toDateFormat();
    }

    public String getTime() {
        return toDateFormat("HH:mm:ss");
    }

    public long getTimeMillis() {
        return this.date.getTime();
    }


    public Date toDate() {
        return this.date;
    }

    public String toDateFormat() {
        return this.sdf.format(this.date);
    }

    public String toDateFormat(String s) {
        return (new SimpleDateFormat(s)).format(this.date);
    }

    public long toMilliSeconds() {
        return this.date.getTime();
    }

    public Timestamp toTimeStamp() {
        return new Timestamp(this.date.getTime());
    }
}