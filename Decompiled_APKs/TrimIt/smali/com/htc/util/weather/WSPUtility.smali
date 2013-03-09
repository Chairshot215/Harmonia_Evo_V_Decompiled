.class public Lcom/htc/util/weather/WSPUtility;
.super Ljava/lang/Object;
.source "WSPUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.sync.provider.weather"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.sync.provider.weather"

.field private static final DEFAULT_AUTO_SYNC_FREQUENCY:J = 0xa4cb80L

.field private static final DEFAULT_TEMPERATURE_UNIT:Ljava/lang/String; = "c"

.field private static final DEFAULT_findCityName:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

.field private static final DEFAULT_getBookmark:Ljava/lang/String; = "http://www.accuweather.com/?p=htcfav"

.field private static final DEFAULT_getMoreDetails:Ljava/lang/String; = "http://www.accuweather.com/m/details1.aspx"

.field private static final DEFAULT_getWTByGeo:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByCity:Ljava/lang/String; = "http://htc.accuweather.com/widget/htc/forecast-data_v3.asp"

.field private static final DEFAULT_getWeatherByGeo:Ljava/lang/String; = "http://htc.accuweather.com/widget/htc/lat-lon-search.asp"

.field public static final EXTRA_IS_AUTO_SYNC:Ljava/lang/String; = "isWeatherAutoSync"

.field private static final LOG_FLAG:Z = true

.field private static final LOG_PREFIX:Ljava/lang/String; = "[WSPUtility] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"

.field public static final PATH_DATA:Ljava/lang/String; = "data"

.field public static final SETTING_INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.sync.provider.weather.SETTINGS_UPDATED"

.field public static final SETTING_INTENT_EXTRA_NAME_SETTING_DATA:Ljava/lang/String; = "settingData"

.field public static final SETTING_KEY_AUTO_SYNC_FREQUENCY:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.autosyncfrequency"

.field public static final SETTING_KEY_SOUND_EFFECT:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.soundeffect"

.field public static final SETTING_KEY_TEMPERATURE_UNIT:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.temperatureunit"

.field public static final SETTING_KEY_USING_WCR:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.usingwcr"

.field public static final SETTING_KEY_WCRDATA_FINDCITYNAME:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

.field public static final SETTING_KEY_WCRDATA_GETBOOKMARK:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

.field public static final SETTING_KEY_WCRDATA_GETMOREDETAILS:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

.field public static final SETTING_KEY_WCRDATA_GETWEATHERBYCITY:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

.field public static final SETTING_KEY_WCRDATA_GETWEATHERBYGEO:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

.field public static final SETTING_KEY_WCRDATA_GETWTBYGEO:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

.field public static final SYNC_SERVICE_RESULT_INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.sync.provider.weather.result"

.field public static final SYNC_SERVICE_RESULT_INTENT_EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final SYNC_SERVICE_RESULT_INTENT_EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final SYNC_SERVICE_TRIGGER_INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.sync.provider.weather.SyncService"

.field public static final SYNC_SERVICE_TRIGGER_INTENT_EXTRA_CATEGORY_NAME:Ljava/lang/String; = "categoryName"

.field public static final SYNC_SERVICE_TRIGGER_INTENT_EXTRA_REQUESTS:Ljava/lang/String; = "requests"

.field public static final SYNC_SERVICE_TRIGGER_INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final SYNC_SERVICE_TRIGGER_SOURCE_AUTO_SYNC:I = 0x3

.field public static final SYNC_SERVICE_TRIGGER_SOURCE_FORCE_UPDATE:I = 0x2

.field public static final SYNC_SERVICE_TRIGGER_SOURCE_REQUEST:I = 0x1

.field public static final TEMPERATURE_UNIT_CELSIUS:Ljava/lang/String; = "c"

.field public static final TEMPERATURE_UNIT_FAHRENHEIT:Ljava/lang/String; = "f"

.field public static final TYPE_CURRENT_LOCATION:I = 0x1

.field public static final TYPE_LATITUDE:I = 0x3

.field public static final TYPE_LOC_CODE:I = 0x2

.field public static final URI_DATA:Landroid/net/Uri; = null

.field public static final WSP_FLAG_CUR_LOC_KEY:Ljava/lang/String; = "curLocFlag"

.field public static final WSP_FLAG_CUR_LOC_OFF:Ljava/lang/String; = "off"

.field public static final WSP_FLAG_CUR_LOC_ON:Ljava/lang/String; = "on"

.field public static final WSP_SETTING_APP_NAME:Ljava/lang/String; = "com.htc.sync.provider.weather"

.field public static final WSP_UTILITY_FUNC_SET_SYNC_AUTOMATICALLY:Ljava/lang/String; = "com.htc.util.weather.WSPUtility.setSyncAutomatically"

.field public static final WSP_UTILITY_NOTIFICATION_INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.util.weather.WSPUtility"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.htc.sync.provider.weather/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static _addRequestInDatabase(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V
    .locals 8
    .parameter "context"
    .parameter "req"

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, added:Z
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/util/weather/WSPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, where:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v3, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastRequest:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    invoke-static {p0, v4}, Lcom/htc/util/weather/WSPUtility;->_hasRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, updated:I
    if-lez v1, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 307
    .end local v1           #updated:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 308
    const-string v5, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WSPUtility] adding request is successful, request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->toDebugInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_1
    return-void

    .line 297
    :cond_1
    sget-object v5, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    sget-object v5, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v5, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 302
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 303
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    const-string v5, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WSPUtility] adding request is failed, request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->toDebugInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static _getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPData;
    .locals 15
    .parameter "context"
    .parameter "req"
    .parameter "sysCurLoc"

    .prologue
    .line 315
    const/4 v13, 0x0

    .line 318
    .local v13, cacheData:Lcom/htc/util/weather/WSPData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/htc/util/weather/WSPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 324
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 331
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v13, Lcom/htc/util/weather/WSPData;

    .end local v13           #cacheData:Lcom/htc/util/weather/WSPData;
    invoke-direct {v13, v14}, Lcom/htc/util/weather/WSPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPData;
    :cond_0
    if-eqz v14, :cond_1

    .line 336
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_1
    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 341
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] check cache data, sys cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, curLocLngTrim:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 348
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] check cache data, cur in cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    const-string v1, "WSP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] check cache data, has cache? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v13, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v13}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    .line 389
    .end local v7           #curLocLatTrim:Ljava/lang/String;
    .end local v8           #curLocLngTrim:Ljava/lang/String;
    :goto_1
    return-object v13

    .line 335
    .end local v13           #cacheData:Lcom/htc/util/weather/WSPData;
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_3

    .line 336
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 380
    .restart local v7       #curLocLatTrim:Ljava/lang/String;
    .restart local v8       #curLocLngTrim:Ljava/lang/String;
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPData;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    .end local v7           #curLocLatTrim:Ljava/lang/String;
    .end local v8           #curLocLngTrim:Ljava/lang/String;
    :cond_5
    const-string v1, "WSP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] check cache data, pam1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pam2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", has cache? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v13, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static _getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;
    .locals 9
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v6

    .line 152
    :cond_1
    const/4 v6, 0x0

    .line 154
    .local v6, cacheData:Lcom/htc/util/weather/WSPData;
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 159
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v6, Lcom/htc/util/weather/WSPData;

    .end local v6           #cacheData:Lcom/htc/util/weather/WSPData;
    invoke-direct {v6, v7}, Lcom/htc/util/weather/WSPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .restart local v6       #cacheData:Lcom/htc/util/weather/WSPData;
    :cond_2
    if-eqz v7, :cond_0

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    .end local v6           #cacheData:Lcom/htc/util/weather/WSPData;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected static _getCurrentLocation(Landroid/content/Context;)Lcom/htc/util/weather/WeatherLocation;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-static {v3, v4}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 732
    .local v1, curLoc:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v3, v6, :cond_2

    :cond_0
    move-object v0, v2

    .line 749
    :cond_1
    :goto_0
    return-object v0

    .line 735
    :cond_2
    array-length v3, v1

    if-le v3, v6, :cond_3

    .line 736
    const-string v3, "WSP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WSPUtility] _getCurrentLocation: curLoc.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 740
    .local v0, cl:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_4

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_5

    :cond_4
    move-object v0, v2

    .line 741
    goto :goto_0

    .line 744
    :cond_5
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 745
    :cond_6
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 746
    :cond_7
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 747
    :cond_8
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static _hasRequested(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 424
    const/4 v7, 0x0

    .line 426
    .local v7, ret:Z
    const/4 v6, 0x0

    .line 429
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->_id:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 432
    const/4 v7, 0x1

    .line 436
    :cond_0
    if-eqz v6, :cond_1

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_1
    return v7

    .line 436
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static areBackgroundDataAndAutoSyncEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 799
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 800
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v1

    .line 804
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPData;)V
    .locals 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 754
    const-string v2, "WSP"

    const-string v3, "[WSPUtility] can not broadcast data intent because of a null data object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, categoryName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    const-string v2, "WSP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WSPUtility] broadcast data intent, category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static cleanCurInCache(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V
    .locals 5
    .parameter "context"
    .parameter "req"

    .prologue
    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, ret:I
    const-string v2, "WSP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WSPUtility] clean cur in cache, rows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method public static disableCurrentLocation(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 767
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] remove current location latitude and its weather cache data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.htclocationservice"

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/htc/util/weather/WeatherLocation;

    invoke-static {v1, v2, v3}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 769
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/weather/WSPUtility;->cleanCurInCache(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 771
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->turnOnWSPCurrentLocationFlag(Landroid/content/Context;)V

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htclocationservice.currentlocation.updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, notifyIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    return-void
.end method

.method public static generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 103
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPRequest;->setTypeCurrentLocation()V

    .line 104
    return-object v0
.end method

.method public static generateWSPRequestForCurrentLocationWithCurCacheData(Landroid/content/Context;)Lcom/htc/util/weather/WSPRequest;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 133
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v0

    .line 135
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-static {p0, v0}, Lcom/htc/util/weather/WSPUtility;->_getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v10

    .line 136
    .local v10, curInCache:Lcom/htc/util/weather/WSPData;
    if-nez v10, :cond_0

    .line 137
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] Generate request for cur loc with cur in db, but there is no cur in db. (Called from Force update or Auto-sync)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-object v9

    .line 141
    :cond_0
    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    move-object v9, v0

    .line 144
    goto :goto_0
.end method

.method public static generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const/4 v2, 0x1

    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "latitude can not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "longitude can not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_3
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 127
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0, p0, p1}, Lcom/htc/util/weather/WSPRequest;->setTypeLatitude(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;
    .locals 3
    .parameter "locCode"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "locCode can not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_1
    new-instance v0, Lcom/htc/util/weather/WSPRequest;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest;-><init>()V

    .line 113
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v0, p0}, Lcom/htc/util/weather/WSPRequest;->setTypeLocCode(Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method public static generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, where:Ljava/lang/String;
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    :cond_0
    :goto_0
    return-object v0

    .line 724
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAutoSyncFrequency(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 579
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 585
    .local v1, ret:J
    :goto_0
    return-wide v1

    .line 580
    .end local v1           #ret:J
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->setDefaultAutoSyncFrequency(Landroid/content/Context;)V

    .line 582
    const-wide/32 v1, 0xa4cb80

    .restart local v1       #ret:J
    goto :goto_0
.end method

.method public static getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, unit:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 592
    :cond_0
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->setDefaultTemperatureUnit(Landroid/content/Context;)V

    .line 593
    const-string v0, "c"

    .line 596
    :cond_1
    return-object v0
.end method

.method public static getUsingWCRFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.usingwcr"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 611
    .local v0, flag:Z
    :goto_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get UsingWCR flag is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return v0

    .line 610
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getWCRFindCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR FindCityName: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    .line 681
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR FindCityName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-object v0
.end method

.method public static getWCRGetBookmark(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR GetBookmark: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v0, "http://www.accuweather.com/?p=htcfav"

    .line 701
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR GetBookmark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-object v0
.end method

.method public static getWCRGetMoreDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR GetMoreDetails: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v0, "http://www.accuweather.com/m/details1.aspx"

    .line 671
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR GetMoreDetails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-object v0
.end method

.method public static getWCRGetWTByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR GetWTByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    .line 691
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR GetWTByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-object v0
.end method

.method public static getWCRGetWeatherByCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR GetWeatherByCity: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v0, "http://htc.accuweather.com/widget/htc/forecast-data_v3.asp"

    .line 651
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR GetWeatherByCity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-object v0
.end method

.method public static getWCRGetWeatherByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] get WCR GetWeatherByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v0, "http://htc.accuweather.com/widget/htc/lat-lon-search.asp"

    .line 661
    :cond_0
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] get WCR GetWeatherByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-object v0
.end method

.method public static getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 4
    .parameter "context"

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 553
    .local v0, acc:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.htc.sync.provider.weather"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 554
    .local v1, accs:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 555
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 558
    :cond_0
    return-object v0
.end method

.method private static isCurLocChanged(Lcom/htc/util/weather/WSPData;Lcom/htc/util/weather/WeatherLocation;)Z
    .locals 5
    .parameter "cacheData"
    .parameter "sysCurLoc"

    .prologue
    const/4 v2, 0x1

    .line 393
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v2

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 405
    :cond_4
    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, curLocLatTrim:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, curLocLngTrim:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0
.end method

.method public static isSyncAutomatically(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 538
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 541
    .local v0, acc:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 542
    const-string v1, "com.htc.sync.provider.weather"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 547
    .end local v0           #acc:Landroid/accounts/Account;
    :goto_0
    return v1

    .line 544
    .restart local v0       #acc:Landroid/accounts/Account;
    :cond_0
    const-string v1, "WSP"

    const-string v2, "[WSPUtility] can\'t get weather sync account"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v0           #acc:Landroid/accounts/Account;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTemperatureCelsius(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 600
    const-string v0, "c"

    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather"

    const-string v3, "curLocFlag"

    invoke-static {v1, v2, v3}, Lcom/htc/util/weather/WeatherUtility;->loadSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 792
    const-string v0, "off"

    .line 794
    :cond_0
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;
    .locals 29
    .parameter "context"
    .parameter "req"

    .prologue
    .line 181
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context or WSPRequest can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WSPUtility] EVENT - REQUEST, req: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v26, 0x0

    .line 188
    .local v26, sysCurLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/16 v23, 0x1

    .line 191
    .local v23, isCurLocType:Z
    :goto_0
    if-eqz v23, :cond_4

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->_getCurrentLocation(Landroid/content/Context;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v26

    .line 193
    if-nez v26, :cond_4

    .line 194
    const-string v4, "WSP"

    const-string v5, "[WSPUtility] request cur loc, but there is no sys cur"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v17, 0x0

    .line 277
    :cond_2
    :goto_1
    return-object v17

    .line 188
    .end local v23           #isCurLocType:Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    .line 200
    .restart local v23       #isCurLocType:Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility;->_getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPData;

    move-result-object v17

    .line 203
    .local v17, cacheData:Lcom/htc/util/weather/WSPData;
    invoke-static/range {p0 .. p1}, Lcom/htc/util/weather/WSPUtility;->_addRequestInDatabase(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 206
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v24

    .line 207
    .local v24, isSyncAutomatically:Z
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->areBackgroundDataAndAutoSyncEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 208
    .local v14, areBackgroundDataAndAutoSyncEnabled:Z
    if-eqz v17, :cond_a

    const/16 v20, 0x1

    .line 210
    .local v20, hasCacheData:Z
    :goto_2
    const/16 v21, 0x0

    .line 214
    .local v21, isCacheOverdue:Z
    if-eqz v20, :cond_5

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v15

    .line 216
    .local v15, autoSyncFrequency:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v12, v4, v15

    .line 218
    .local v12, acceptablyTime:J
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPData;->getLastUpdate()J

    move-result-wide v18

    .line 219
    .local v18, cacheDataUpdate:J
    cmp-long v4, v18, v12

    if-gez v4, :cond_b

    const/16 v21, 0x1

    .line 220
    :goto_3
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WSPUtility] req "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " has cache data with update time: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", acceptably time: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", overdue? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    :cond_5
    if-eqz v23, :cond_8

    .line 225
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPUtility;->isCurLocChanged(Lcom/htc/util/weather/WSPData;Lcom/htc/util/weather/WeatherLocation;)Z

    move-result v22

    .line 226
    .local v22, isCurChanged:Z
    if-nez v21, :cond_6

    if-eqz v22, :cond_c

    :cond_6
    const/16 v21, 0x1

    .line 227
    :goto_4
    if-eqz v20, :cond_7

    if-nez v21, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 228
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPUtility;->turnOffWSPCurrentLocationFlag(Landroid/content/Context;)V

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPData;)V

    .line 245
    :cond_7
    if-nez v14, :cond_8

    if-nez v20, :cond_8

    .line 247
    new-instance v3, Lcom/htc/util/weather/WSPData;

    invoke-direct {v3}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 249
    .local v3, d:Lcom/htc/util/weather/WSPData;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, curLocLngTrim:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v26 .. v26}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/htc/util/weather/WSPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/htc/util/weather/WSPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 257
    .local v28, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/util/weather/WSPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v8, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 258
    .local v25, ret:I
    if-lez v25, :cond_d

    .line 259
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WSPUtility] (auto-sync is disabled and no cur in cache) save new cur loc data to cache successful, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/htc/util/weather/WSPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPData;)V

    .line 269
    .end local v3           #d:Lcom/htc/util/weather/WSPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v22           #isCurChanged:Z
    .end local v25           #ret:I
    .end local v28           #where:Ljava/lang/String;
    :cond_8
    if-eqz v24, :cond_e

    if-eqz v20, :cond_9

    if-eqz v21, :cond_e

    :cond_9
    const/16 v27, 0x1

    .line 270
    .local v27, triggerSyncService:Z
    :goto_6
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WSPUtility] req info: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", hasCacheData: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", cacheOverdue: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", isSyncAuto: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", triggerSyncService: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-eqz v27, :cond_2

    .line 274
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/util/weather/WSPRequest;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v8}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V

    goto/16 :goto_1

    .line 208
    .end local v20           #hasCacheData:Z
    .end local v21           #isCacheOverdue:Z
    .end local v27           #triggerSyncService:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 219
    .restart local v12       #acceptablyTime:J
    .restart local v15       #autoSyncFrequency:J
    .restart local v18       #cacheDataUpdate:J
    .restart local v20       #hasCacheData:Z
    .restart local v21       #isCacheOverdue:Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 226
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    .restart local v22       #isCurChanged:Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 261
    .restart local v3       #d:Lcom/htc/util/weather/WSPData;
    .restart local v6       #curLocLatTrim:Ljava/lang/String;
    .restart local v7       #curLocLngTrim:Ljava/lang/String;
    .restart local v25       #ret:I
    .restart local v28       #where:Ljava/lang/String;
    :cond_d
    const-string v4, "WSP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WSPUtility] (auto-sync is disabled and no cur in cache) save new cur loc data to cache failed, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 269
    .end local v3           #d:Lcom/htc/util/weather/WSPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v22           #isCurChanged:Z
    .end local v25           #ret:I
    .end local v28           #where:Ljava/lang/String;
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_6
.end method

.method public static setDefaultAutoSyncFrequency(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 566
    const-string v0, "WSP"

    const-string v1, "[WSPUtility] no customization data - auto sync frequency, set default value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    const-string v2, "10800000"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 568
    return-void
.end method

.method public static setDefaultTemperatureUnit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 571
    const-string v0, "WSP"

    const-string v1, "[WSPUtility] no customization data - temperature unit, set default value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    const-string v2, "c"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    return-void
.end method

.method public static setSyncAutomatically(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isSyncAutomatically"

    .prologue
    .line 522
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 524
    .local v0, acc:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 525
    const-string v2, "com.htc.sync.provider.weather"

    invoke-static {v0, v2, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 528
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.util.weather.WSPUtility"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.util.weather.WSPUtility.setSyncAutomatically"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 532
    :cond_0
    const-string v2, "WSP"

    const-string v3, "[WSPUtility] can\'t get weather sync account"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUsingWCRFlag(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    .line 605
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WSPUtility] set UsingWCR flag to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.usingwcr"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWCRFindCityName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 631
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR FindCityName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetBookmark(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 641
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR GetBookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetMoreDetails(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 626
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR GetMoreDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWTByGeo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 636
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR GetWTByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWeatherByCity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 616
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR GetWeatherByCity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWeatherByGeo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 621
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WSPUtility] set WCR GetWeatherByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;)V
    .locals 10
    .parameter "context"
    .parameter "resultIntentCategoryName"
    .parameter "requests"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 449
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_0

    .line 450
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "length of category name must > 1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 453
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v1, checkedRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WSPRequest;>;"
    if-eqz p2, :cond_3

    .line 457
    array-length v4, p2

    .line 458
    .local v4, totalRequests:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 459
    aget-object v6, p2, v3

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 460
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForCurrentLocationWithCurCacheData(Landroid/content/Context;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    .line 461
    .local v2, curReq:Lcom/htc/util/weather/WSPRequest;
    if-nez v2, :cond_1

    .line 462
    const-string v6, "WSP"

    const-string v8, "[WSPUtility] Force update cur loc, but there is no cur loc in db. Maybe the cur loc in db was deleted because of a new cur loc."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v2           #curReq:Lcom/htc/util/weather/WSPRequest;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .restart local v2       #curReq:Lcom/htc/util/weather/WSPRequest;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    .end local v2           #curReq:Lcom/htc/util/weather/WSPRequest;
    :cond_2
    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    .end local v3           #i:I
    .end local v4           #totalRequests:I
    :cond_3
    const-string v8, "WSP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WSPUtility] EVENT - FORCE UPDATE, total reqs: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", accepted reqs: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-array v6, v7, [Lcom/htc/util/weather/WSPRequest;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/util/weather/WSPRequest;

    const/4 v8, 0x2

    invoke-static {p0, p1, v6, v8}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V

    .line 477
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    .line 478
    .local v5, weatherAccount:Landroid/accounts/Account;
    if-eqz v5, :cond_4

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "isWeatherAutoSync"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    const-string v6, "com.htc.sync.provider.weather"

    invoke-static {v5, v6, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 485
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    return-void

    .line 472
    .end local v5           #weatherAccount:Landroid/accounts/Account;
    :cond_5
    array-length v6, p2

    goto :goto_2
.end method

.method public static triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V
    .locals 5
    .parameter "context"
    .parameter "resultIntentCategoryName"
    .parameter "requests"
    .parameter "triggerSource"

    .prologue
    const/4 v4, 0x2

    .line 489
    if-ne v4, p3, :cond_2

    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 514
    :cond_0
    :goto_0
    if-ne v4, p3, :cond_1

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.app.autosetting.location"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, htcLocationServiceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 518
    .end local v0           #htcLocationServiceIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 492
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sync.provider.weather.SyncService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_3

    .line 495
    const-string v2, "categoryName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    :cond_3
    if-eqz p2, :cond_4

    .line 499
    const-string v2, "requests"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 502
    :cond_4
    const-string v2, "source"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static trimLatitude(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "latitude"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 708
    const-string v1, "[.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, tmp:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 715
    .end local p0
    :goto_0
    return-object p0

    .line 712
    .restart local p0
    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 713
    aget-object v1, v0, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 715
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static turnOffWSPCurrentLocationFlag(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather"

    const-string v2, "curLocFlag"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/weather/WeatherUtility;->insertOrUpdateSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public static turnOnWSPCurrentLocationFlag(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather"

    const-string v2, "curLocFlag"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/util/weather/WeatherUtility;->insertOrUpdateSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method
