.class public Lcom/htc/sync/provider/weather/ServiceURLHelper;
.super Ljava/lang/Object;
.source "ServiceURLHelper.java"


# static fields
.field private static final DEFAULT_findCityName:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

.field private static final DEFAULT_getBookmark:Ljava/lang/String; = "http://www.accuweather.com/?p=htcfav"

.field private static final DEFAULT_getMoreDetails:Ljava/lang/String; = "http://www.accuweather.com/m/details1.aspx"

.field private static final DEFAULT_getWTByGeo:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByCity:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByGeo:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_version:Ljava/lang/String; = "01.000"

.field private static final KEY_DATA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_DATA_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_FIND_CITY_NAME:Ljava/lang/String; = "findCityName"

.field private static final KEY_GET_BOOKMARK:Ljava/lang/String; = "getBookmark"

.field private static final KEY_GET_MORE_DETAILS:Ljava/lang/String; = "getMoreDetails"

.field private static final KEY_GET_VENDOR_LOGO:Ljava/lang/String; = "GetVendorLogo"

.field private static final KEY_GET_WEATHER_BY_CITY:Ljava/lang/String; = "getWeatherByCity"

.field private static final KEY_GET_WEATHER_BY_GEO:Ljava/lang/String; = "getWeatherByGeo"

.field private static final KEY_GET_WT_BY_GEO:Ljava/lang/String; = "getWTByGeo"

.field private static final KEY_TIMESTAMP_FOR_LASTVERSION:Ljava/lang/String; = "timestamp_for_lastversion"

.field public static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[ServiceURLHelper] "

.field public static final LOG_TAG:Ljava/lang/String; = "WSP"

.field private static WCRDATA_GetVendorLogo:Ljava/lang/String; = null

.field private static final WCRDATA_PREFS_NAME:Ljava/lang/String; = "wcrdata"

.field private static WCRDATA_findCityName:Ljava/lang/String;

.field private static WCRDATA_getBookmark:Ljava/lang/String;

.field private static WCRDATA_getMoreDetails:Ljava/lang/String;

.field private static WCRDATA_getWTByGeo:Ljava/lang/String;

.field private static WCRDATA_getWeatherByCity:Ljava/lang/String;

.field private static WCRDATA_getWeatherByGeo:Ljava/lang/String;

.field private static WCRDATA_timestamp:J

.field private static WCRDATA_version:Ljava/lang/String;

.field private static WCR_timestamp_lastversion:J

.field private static isUsingWCRUrl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 60
    sput-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    .line 61
    sput-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkWCRUrl(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 100
    const-string v3, "wcrdata"

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "timestamp_for_lastversion"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, current:J
    sget-wide v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 106
    const/4 v2, 0x0

    .line 120
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->requestWCRUpdate(Landroid/content/Context;)Z

    move-result v2

    .line 111
    .local v2, hasUpdate:Z
    if-eqz v2, :cond_1

    .line 112
    sput-boolean v7, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    goto :goto_0

    .line 116
    :cond_1
    sput-wide v8, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    .line 117
    invoke-static {p0}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->loadWCRDATA(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static findCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 172
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "findCityName"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    .line 177
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    goto :goto_0
.end method

.method public static getBookmark(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 200
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getBookmark"

    const-string v2, "http://www.accuweather.com/?p=htcfav"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    .line 205
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    .line 210
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://www.accuweather.com/?p=htcfav"

    goto :goto_0
.end method

.method public static getMoreDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 158
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getMoreDetails"

    const-string v2, "http://www.accuweather.com/m/details1.aspx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    .line 163
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://www.accuweather.com/m/details1.aspx"

    goto :goto_0
.end method

.method public static getWTByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 186
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWTByGeo"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    .line 191
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_0
.end method

.method public static getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 130
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByCity"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    .line 135
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    .line 140
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_0
.end method

.method public static getWeatherByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "wcrdata"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByGeo"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    .line 149
    :cond_0
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_0
.end method

.method public static isUsingWCRUrl()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    return v0
.end method

.method public static loadWCRDATA(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 66
    sget-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 67
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    .line 68
    sget-wide v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByCity"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    .line 70
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWeatherByGeo"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    .line 71
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getMoreDetails"

    const-string v2, "http://www.accuweather.com/m/details1.aspx"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    .line 72
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "findCityName"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    .line 73
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getWTByGeo"

    const-string v2, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    .line 74
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getBookmark"

    const-string v2, "http://www.accuweather.com/?p=htcfav"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    .line 75
    const-string v0, "wcrdata"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "01.000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    .line 77
    sput-boolean v3, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sync/provider/weather/ServiceURLHelper;->isUsingWCRUrl:Z

    goto :goto_0
.end method

.method private static requestWCRUpdate(Landroid/content/Context;)Z
    .locals 35
    .parameter "context"

    .prologue
    .line 218
    const-string v31, "ro.mid"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 220
    .local v22, mid:Ljava/lang/String;
    const-string v26, ""

    .line 222
    .local v26, sku:Ljava/lang/String;
    :try_start_0
    const-string v31, "ro.product.version"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "\\."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 223
    .local v27, sp:[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    .line 224
    const/16 v31, 0x2

    aget-object v26, v27, v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    .end local v27           #sp:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 230
    const-string v26, "0"

    .line 233
    :cond_1
    const-string v31, "ro.cid"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, cid:Ljava/lang/String;
    sget-object v28, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    .line 236
    .local v28, version:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 237
    const-string v31, "wcrdata"

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    const-string v32, "version"

    const-string v33, "01.000"

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 247
    :cond_2
    const-string v31, "wcr.weather.test"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 249
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "http://ec2-122-248-192-161.ap-southeast-1.compute.amazonaws.com:8080/wcr/weather?mid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&sku="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&cid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&vs="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 258
    .local v29, wcr_addr:Ljava/lang/String;
    :goto_1
    :try_start_1
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 259
    .local v13, httpConn:Ljava/net/HttpURLConnection;
    const/16 v31, 0x1388

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 260
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 265
    const/4 v15, 0x0

    .line 266
    .local v15, in:Ljava/io/InputStream;
    const/16 v30, 0x0

    .line 269
    .local v30, wcr_resource:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 270
    if-eqz v15, :cond_9

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v5, builder:Ljava/lang/StringBuilder;
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/InputStreamReader;

    const-string v32, "latin1"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v15, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 275
    .local v25, reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .local v20, line:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 276
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 283
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v20           #line:Ljava/lang/String;
    .end local v25           #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v31

    if-eqz v15, :cond_3

    .line 284
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 431
    .end local v15           #in:Ljava/io/InputStream;
    .end local v30           #wcr_resource:Ljava/lang/String;
    :catchall_1
    move-exception v31

    if-eqz v13, :cond_4

    .line 432
    :try_start_5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v31
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 435
    .end local v13           #httpConn:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v9

    .line 437
    .local v9, e1:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 440
    .end local v9           #e1:Ljava/io/IOException;
    :cond_5
    :goto_3
    const/16 v31, 0x0

    :cond_6
    :goto_4
    return v31

    .line 226
    .end local v6           #cid:Ljava/lang/String;
    .end local v28           #version:Ljava/lang/String;
    .end local v29           #wcr_addr:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 227
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 252
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cid:Ljava/lang/String;
    .restart local v28       #version:Ljava/lang/String;
    :cond_7
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "http://wcr.htcsense.com/wcr/weather?mid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&sku="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&cid="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "&vs="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .restart local v29       #wcr_addr:Ljava/lang/String;
    goto/16 :goto_1

    .line 278
    .restart local v5       #builder:Ljava/lang/StringBuilder;
    .restart local v13       #httpConn:Ljava/net/HttpURLConnection;
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v20       #line:Ljava/lang/String;
    .restart local v25       #reader:Ljava/io/BufferedReader;
    .restart local v30       #wcr_resource:Ljava/lang/String;
    :cond_8
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V

    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v30

    .line 283
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v20           #line:Ljava/lang/String;
    .end local v25           #reader:Ljava/io/BufferedReader;
    :cond_9
    if-eqz v15, :cond_a

    .line 284
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 288
    :cond_a
    if-eqz v30, :cond_d

    .line 291
    :try_start_8
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v18, json:Lorg/json/JSONObject;
    const-string v31, "urls"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 294
    .local v17, jary:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_13

    .line 295
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 296
    .local v23, name:Ljava/lang/String;
    const-string v31, "getWeatherByCity"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 297
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    .line 294
    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 299
    :cond_c
    const-string v31, "getWeatherByGeo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 300
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 407
    .end local v14           #i:I
    .end local v17           #jary:Lorg/json/JSONArray;
    .end local v18           #json:Lorg/json/JSONObject;
    .end local v23           #name:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 409
    .local v8, e:Lorg/json/JSONException;
    :try_start_9
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 431
    .end local v8           #e:Lorg/json/JSONException;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v30           #wcr_resource:Ljava/lang/String;
    :cond_d
    :goto_7
    if-eqz v13, :cond_5

    .line 432
    :try_start_a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    .line 302
    .restart local v14       #i:I
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v17       #jary:Lorg/json/JSONArray;
    .restart local v18       #json:Lorg/json/JSONObject;
    .restart local v23       #name:Ljava/lang/String;
    .restart local v30       #wcr_resource:Ljava/lang/String;
    :cond_e
    :try_start_b
    const-string v31, "getMoreDetails"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 303
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    goto :goto_6

    .line 305
    :cond_f
    const-string v31, "findCityName"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 306
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    goto :goto_6

    .line 308
    :cond_10
    const-string v31, "getWTByGeo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 309
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    goto/16 :goto_6

    .line 311
    :cond_11
    const-string v31, "getBookmark"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 312
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    goto/16 :goto_6

    .line 314
    :cond_12
    const-string v31, "GetVendorLogo"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 315
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    goto/16 :goto_6

    .line 325
    .end local v23           #name:Ljava/lang/String;
    :cond_13
    const-string v31, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    .line 329
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    move-result v31

    if-eqz v31, :cond_15

    .line 333
    :cond_14
    const/16 v31, 0x0

    .line 431
    if-eqz v13, :cond_6

    .line 432
    :try_start_c
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_4

    .line 337
    :cond_15
    const/4 v12, 0x0

    .line 338
    .local v12, getImage:Z
    :try_start_d
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 339
    .local v16, index:I
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    add-int/lit8 v32, v16, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    move-result-object v21

    .line 341
    .local v21, logoName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 343
    .local v7, conn:Ljava/net/HttpURLConnection;
    :try_start_e
    new-instance v31, Ljava/net/URL;

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_GetVendorLogo:Ljava/lang/String;

    invoke-direct/range {v31 .. v32}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 344
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v3, bis:Ljava/io/BufferedInputStream;
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-result-object v11

    .line 347
    .local v11, fos:Ljava/io/FileOutputStream;
    const/16 v31, 0x200

    :try_start_f
    move/from16 v0, v31

    new-array v4, v0, [B

    .line 348
    .local v4, buffer:[B
    const/16 v19, 0x0

    .line 349
    .local v19, len:I
    :goto_8
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v19

    if-lez v19, :cond_19

    .line 350
    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 354
    .end local v4           #buffer:[B
    .end local v19           #len:I
    :catchall_2
    move-exception v31

    if-eqz v11, :cond_16

    .line 355
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 356
    :cond_16
    if-eqz v3, :cond_17

    .line 357
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_17
    throw v31
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 359
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v31

    .line 363
    if-eqz v7, :cond_18

    .line 364
    :try_start_11
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_2

    .line 367
    :cond_18
    :goto_9
    if-nez v12, :cond_1d

    .line 371
    const/16 v31, 0x0

    .line 431
    if-eqz v13, :cond_6

    .line 432
    :try_start_12
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_4

    .line 352
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #len:I
    :cond_19
    const/4 v12, 0x1

    .line 354
    if-eqz v11, :cond_1a

    .line 355
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 356
    :cond_1a
    if-eqz v3, :cond_1b

    .line 357
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 363
    :cond_1b
    if-eqz v7, :cond_18

    .line 364
    :try_start_14
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    .line 363
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #len:I
    :catchall_3
    move-exception v31

    if-eqz v7, :cond_1c

    .line 364
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c
    throw v31

    .line 376
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    .line 380
    const-string v31, "wcrdata"

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 381
    .local v24, prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 382
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string v31, "getWeatherByCity"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v31, "getWeatherByGeo"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v31, "getMoreDetails"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v31, "findCityName"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v31, "getWTByGeo"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    const-string v31, "getBookmark"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v31, "version"

    sget-object v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_version:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v31, "timestamp"

    sget-wide v32, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_timestamp:J

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-interface {v10, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetVendorLogo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 396
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByCity:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWeatherByCity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 397
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWeatherByGeo:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWeatherByGeo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 398
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getMoreDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetMoreDetails(Landroid/content/Context;Ljava/lang/String;)Z

    .line 399
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_findCityName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRFindCityName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 400
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getWTByGeo:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetWTByGeo(Landroid/content/Context;Ljava/lang/String;)Z

    .line 401
    sget-object v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCRDATA_getBookmark:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setWCRGetBookmark(Landroid/content/Context;Ljava/lang/String;)Z

    .line 402
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->setUsingWCRFlag(Landroid/content/Context;Z)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_2

    .line 405
    const/16 v31, 0x1

    .line 431
    if-eqz v13, :cond_6

    .line 432
    :try_start_15
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_4

    .line 412
    .end local v7           #conn:Ljava/net/HttpURLConnection;
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #getImage:Z
    .end local v14           #i:I
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #index:I
    .end local v17           #jary:Lorg/json/JSONArray;
    .end local v18           #json:Lorg/json/JSONObject;
    .end local v21           #logoName:Ljava/lang/String;
    .end local v24           #prefs:Landroid/content/SharedPreferences;
    .end local v30           #wcr_resource:Ljava/lang/String;
    :cond_1e
    :try_start_16
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0x194

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    .line 419
    const-string v31, "wcrdata"

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "timestamp_for_lastversion"

    sget-wide v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-interface/range {v31 .. v34}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    .line 421
    :cond_1f
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0x130

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    .line 428
    const-string v31, "wcrdata"

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    const-string v32, "timestamp_for_lastversion"

    sget-wide v33, Lcom/htc/sync/provider/weather/ServiceURLHelper;->WCR_timestamp_lastversion:J

    invoke-interface/range {v31 .. v34}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_7
.end method
