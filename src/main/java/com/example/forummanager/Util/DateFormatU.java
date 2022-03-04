package com.example.forummanager.Util;

import org.springframework.core.convert.converter.Converter;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
//时间解析

public class DateFormatU implements Converter<Date,Date> {

    @Override
    public Date convert(Date source) {
        DateFormat dateFormat =new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        dateFormat.format(source);
        return source;
    }
}
