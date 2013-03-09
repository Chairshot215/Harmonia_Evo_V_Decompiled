.class public Lcom/htc/util/weather/WSPPUtility;
.super Lcom/htc/util/weather/WSPUtility;
.source "WSPPUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;
    }
.end annotation


# static fields
.field private static final DEFAULT_findCityName:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

.field private static final DEFAULT_getBookmark:Ljava/lang/String; = "http://www.accuweather.com/?p=htcfav"

.field private static final DEFAULT_getMoreDetails:Ljava/lang/String; = "http://www.accuweather.com/m/details1.aspx"

.field private static final DEFAULT_getWTByGeo:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByCity:Ljava/lang/String; = null

.field private static final DEFAULT_getWeatherByGeo:Ljava/lang/String; = null

.field private static final LOG_FLAG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "WSPPUtility"

.field public static final SETTING_KEY_WCRDATA_GETVENDORLOGO:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "http://htctablet.accu-weather.com/widget/htctablet/weather-data.asp"

    :goto_0
    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    const-string v0, "http://htctablet.accu-weather.com/widget/htctablet/weather-data.asp"

    :goto_1
    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/util/weather/WSPUtility;-><init>()V

    return-void
.end method

.method private static _getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPPData;
    .locals 15
    .parameter "context"
    .parameter "req"
    .parameter "sysCurLoc"

    .prologue
    .line 190
    const/4 v13, 0x0

    .line 193
    .local v13, cacheData:Lcom/htc/util/weather/WSPPData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 199
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 206
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v13, Lcom/htc/util/weather/WSPPData;

    .end local v13           #cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-direct {v13, v14}, Lcom/htc/util/weather/WSPPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_0
    if-eqz v14, :cond_1

    .line 211
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 216
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cache data, sys cur: "

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

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, curLocLngTrim:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 223
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cache data, cur in cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 231
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 234
    :cond_3
    const/4 v13, 0x0

    .line 253
    :cond_4
    :goto_0
    const-string v1, "WSPPUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cache data, has cache? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v13, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
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

    .line 262
    .end local v7           #curLocLatTrim:Ljava/lang/String;
    .end local v8           #curLocLngTrim:Ljava/lang/String;
    :goto_2
    return-object v13

    .line 210
    .end local v13           #cacheData:Lcom/htc/util/weather/WSPPData;
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_5

    .line 211
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 239
    .restart local v7       #curLocLatTrim:Ljava/lang/String;
    .restart local v8       #curLocLngTrim:Ljava/lang/String;
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_6
    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    :cond_7
    const/4 v13, 0x0

    goto :goto_0

    .line 253
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    .end local v7           #curLocLatTrim:Ljava/lang/String;
    .end local v8           #curLocLngTrim:Ljava/lang/String;
    :cond_9
    const-string v1, "WSPPUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cache data, pam1: "

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

    if-eqz v13, :cond_a

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static _getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;
    .locals 9
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v6

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 165
    .local v6, cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 170
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    new-instance v6, Lcom/htc/util/weather/WSPPData;

    .end local v6           #cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-direct {v6, v7}, Lcom/htc/util/weather/WSPPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .restart local v6       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_2
    if-eqz v7, :cond_0

    .line 182
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 181
    .end local v6           #cacheData:Lcom/htc/util/weather/WSPPData;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 182
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V
    .locals 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const-string v2, "WSPPUtility"

    const-string v3, "can not broadcast data intent because of a null data object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, categoryName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    const-string v2, "WSPPUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast data intent, category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static generateWSPRequestForCurrentLocationWithCurCacheData(Landroid/content/Context;)Lcom/htc/util/weather/WSPRequest;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 47
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v0

    .line 49
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-static {p0, v0}, Lcom/htc/util/weather/WSPPUtility;->_getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v10

    .line 50
    .local v10, curInCache:Lcom/htc/util/weather/WSPPData;
    if-nez v10, :cond_0

    .line 51
    const-string v1, "WSPPUtility"

    const-string v2, "Generate request for cur loc with cur in db, but there is no cur in db. (Called from Force update or Auto-sync)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-object v9

    .line 55
    :cond_0
    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    move-object v9, v0

    .line 58
    goto :goto_0
.end method

.method public static getUsingWCRFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.usingwcr"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    .local v0, flag:Z
    :goto_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get UsingWCR flag is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v0

    .line 286
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getWCRFindCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR FindCityName: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    .line 368
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR FindCityName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v0
.end method

.method public static getWCRGetBookmark(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetBookmark: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v0, "http://www.accuweather.com/?p=htcfav"

    .line 388
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetBookmark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v0
.end method

.method public static getWCRGetMoreDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetMoreDetails: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "http://www.accuweather.com/m/details1.aspx"

    .line 358
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetMoreDetails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v0
.end method

.method public static getWCRGetVendorLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, address:Ljava/lang/String;
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetVendorLogo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-object v0
.end method

.method public static getWCRGetWTByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWTByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    .line 378
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWTByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v0
.end method

.method public static getWCRGetWeatherByCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWeatherByCity: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    .line 338
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWeatherByCity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v0
.end method

.method public static getWCRGetWeatherByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWeatherByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    .line 348
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWeatherByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-object v0
.end method

.method public static request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;
    .locals 28
    .parameter "context"
    .parameter "req"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context or WSPRequest can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_1
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT - REQUEST, req: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v25, 0x0

    .line 69
    .local v25, sysCurLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/16 v22, 0x1

    .line 72
    .local v22, isCurLocType:Z
    :goto_0
    if-eqz v22, :cond_4

    .line 73
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->_getCurrentLocation(Landroid/content/Context;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v25

    .line 74
    if-nez v25, :cond_4

    .line 75
    const-string v4, "WSPPUtility"

    const-string v5, "request cur loc, but there is no sys cur"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v17, 0x0

    .line 155
    :cond_2
    :goto_1
    return-object v17

    .line 69
    .end local v22           #isCurLocType:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 81
    .restart local v22       #isCurLocType:Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPPUtility;->_getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPPData;

    move-result-object v17

    .line 84
    .local v17, cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-static/range {p0 .. p1}, Lcom/htc/util/weather/WSPPUtility;->_addRequestInDatabase(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v23

    .line 88
    .local v23, isSyncAutomatically:Z
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->areBackgroundDataAndAutoSyncEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 89
    .local v14, areBackgroundDataAndAutoSyncEnabled:Z
    if-eqz v17, :cond_9

    const/16 v20, 0x1

    .line 90
    .local v20, hasCacheData:Z
    :goto_2
    const/16 v21, 0x0

    .line 94
    .local v21, isCacheOverdue:Z
    if-eqz v20, :cond_5

    .line 95
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v15

    .line 96
    .local v15, autoSyncFrequency:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v12, v4, v15

    .line 98
    .local v12, acceptablyTime:J
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v18

    .line 99
    .local v18, cacheDataUpdate:J
    cmp-long v4, v18, v12

    if-gez v4, :cond_a

    const/16 v21, 0x1

    .line 100
    :goto_3
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "req "

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

    .line 104
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    :cond_5
    if-eqz v22, :cond_7

    .line 105
    if-eqz v20, :cond_6

    if-nez v21, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->turnOffWSPCurrentLocationFlag(Landroid/content/Context;)V

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 123
    :cond_6
    if-nez v14, :cond_7

    if-nez v20, :cond_7

    .line 125
    new-instance v3, Lcom/htc/util/weather/WSPPData;

    invoke-direct {v3}, Lcom/htc/util/weather/WSPPData;-><init>()V

    .line 127
    .local v3, d:Lcom/htc/util/weather/WSPPData;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, curLocLngTrim:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/htc/util/weather/WSPPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 135
    .local v27, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v8, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 136
    .local v24, ret:I
    if-lez v24, :cond_b

    .line 137
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(auto-sync is disabled and no cur in cache) save new cur loc data to cache successful, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 147
    .end local v3           #d:Lcom/htc/util/weather/WSPPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v24           #ret:I
    .end local v27           #where:Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_c

    if-eqz v20, :cond_8

    if-eqz v21, :cond_c

    :cond_8
    const/16 v26, 0x1

    .line 148
    .local v26, triggerSyncService:Z
    :goto_5
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "req info: "

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

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", triggerSyncService: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz v26, :cond_2

    .line 152
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/util/weather/WSPRequest;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v8}, Lcom/htc/util/weather/WSPPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V

    goto/16 :goto_1

    .line 89
    .end local v20           #hasCacheData:Z
    .end local v21           #isCacheOverdue:Z
    .end local v26           #triggerSyncService:Z
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 99
    .restart local v12       #acceptablyTime:J
    .restart local v15       #autoSyncFrequency:J
    .restart local v18       #cacheDataUpdate:J
    .restart local v20       #hasCacheData:Z
    .restart local v21       #isCacheOverdue:Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 139
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    .restart local v3       #d:Lcom/htc/util/weather/WSPPData;
    .restart local v6       #curLocLatTrim:Ljava/lang/String;
    .restart local v7       #curLocLngTrim:Ljava/lang/String;
    .restart local v24       #ret:I
    .restart local v27       #where:Ljava/lang/String;
    :cond_b
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(auto-sync is disabled and no cur in cache) save new cur loc data to cache failed, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 147
    .end local v3           #d:Lcom/htc/util/weather/WSPPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v24           #ret:I
    .end local v27           #where:Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_5
.end method

.method public static setUsingWCRFlag(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    .line 281
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set UsingWCR flag to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
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
    .line 312
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR FindCityName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
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
    .line 322
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetBookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
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
    .line 307
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetMoreDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetVendorLogo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 292
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetVendorLogo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWTByGeo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 317
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWTByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
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
    .line 297
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWeatherByCity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
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
    .line 302
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWeatherByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
