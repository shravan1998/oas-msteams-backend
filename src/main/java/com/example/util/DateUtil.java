package com.example.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
    static SimpleDateFormat dbDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    static SimpleDateFormat displayDateWithoutSeparatorFormat = new SimpleDateFormat("ddMMyyyy");
    static SimpleDateFormat dbDateTimeFormatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    static SimpleDateFormat dbDateTimeFormatter2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    static SimpleDateFormat displayFormat = new SimpleDateFormat("dd MMM yyyy");
    static SimpleDateFormat displayFormat2 = new SimpleDateFormat("dd/MM/yyyy");
    static SimpleDateFormat displayFormatDateTime = new SimpleDateFormat("dd MMM yyyy HH:mm");

    public static boolean isEqual(String dateStr1, String dateStr2) {
        try {
            Date date1 = dbDateFormat.parse(dateStr1);
            Date date2 = dbDateFormat.parse(dateStr2);
            return date1.equals(date2);
        } catch (Exception ex) {
            return false;
        }
    }

    private static Date calculate(Date refDate, int valueType, int value) {
        if (refDate == null) return refDate;
        Calendar cal = Calendar.getInstance();
        cal.setTime(refDate);
        cal.add(valueType, value);
        return cal.getTime();
    }

    public static Date addDays(Date refDate, int days) {
        return calculate(refDate, Calendar.DATE, days);
    }

    public static Date addWeek(Date refDate, int noOfWeeks) {
        return calculate(refDate, Calendar.WEEK_OF_YEAR, noOfWeeks);
    }

    public static Date addMonth(Date refDate, int noOfMonths) {
        return calculate(refDate, Calendar.MONTH, noOfMonths);
    }

    public static Date addYear(Date refDate, int noYears) {
        return calculate(refDate, Calendar.YEAR, noYears);
    }

    public static String dateToDB(Date refDate) {
        if (refDate == null) return "";
        return dbDateFormat.format(refDate);
    }

    public static String dbToDisplay(String dbDate) {
        if (dbDate == null || dbDate.trim().equals("")) return "";
        try {
            Date date = dbDateFormat.parse(dbDate);
            return displayFormat.format(date);
        } catch (Exception ex) {
        }
        return "";
    }

    public static String displayToDB(String dbDate) {
        if (dbDate == null || dbDate.trim().equals("")) return "";
        try {
            Date date = displayFormat2.parse(dbDate);
            return dbDateFormat.format(date);
        } catch (Exception ex) {
        }
        return "";
    }

    public static String dbToDisplayDateTime(String dbDateTime) {
        if (dbDateTime == null || dbDateTime.trim().equals("")) return "";
        try {
            Date date = dbDateTimeFormatter.parse(dbDateTime);
            return displayFormatDateTime.format(date);
        } catch (Exception ex) {
        }
        return "";
    }

    public static String dbToDisplayDateWithoutSeparator(String dbDate) {
        if (dbDate == null || dbDate.trim().equals("")) return "";
        try {
            Date date = dbDateFormat.parse(dbDate);
            return displayDateWithoutSeparatorFormat.format(date);
        } catch (Exception ex) {
        }
        return "";
    }

    public static String dbDate(String dbDateTime) {
        if (dbDateTime == null || dbDateTime.trim().equals("")) return "";
        try {
            Date date = dbDateTimeFormatter.parse(dbDateTime);
            return dbDateFormat.format(date);
        } catch (Exception ex) {
        }
        return "";
    }

    public static String getCurrentDateDb() {
        try {
            return dbDateFormat.format(new Date());
        } catch (Exception ex) {
        }
        return "";
    }

    public static String getNowDateWithoutSeparators() {
        try {
            return displayDateWithoutSeparatorFormat.format(new Date());
        } catch (Exception ex) {
        }

        return "";
    }
    public static String getWeekBeginningDBDate(){
        Calendar c = Calendar.getInstance();
        c.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        return dateToDB(c.getTime());
    }

    public static String getMonthBeginningDBDate(){
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_MONTH,
                cal.getActualMinimum(Calendar.DAY_OF_MONTH));
        return dateToDB(cal.getTime());
    }

    public static String getNowDateTimeInDbFormat() {
        try {
            return dbDateTimeFormatter2.format(new Date());
        } catch (Exception ex) {
        }
        return "";
    }
}
