.class public Lcom/htc/sync/provider/weather/RequestDataHelper;
.super Ljava/lang/Object;
.source "RequestDataHelper.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# instance fields
.field private final PARAM_METRIC:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sync/provider/weather/RequestDataHelper;->PARAM_METRIC:I

    .line 28
    return-void
.end method

.method private parseXml(Ljava/lang/String;Lcom/htc/util/weather/WSPPData;)V
    .locals 2
    .parameter "response"
    .parameter "data"

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lcom/htc/sync/provider/weather/XmlParser;

    invoke-direct {v1}, Lcom/htc/sync/provider/weather/XmlParser;-><init>()V

    .line 164
    .local v1, pt:Lcom/htc/sync/provider/weather/XmlParser;
    invoke-virtual {v1, p1, p2}, Lcom/htc/sync/provider/weather/XmlParser;->parseXml(Ljava/lang/String;Lcom/htc/util/weather/WSPPData;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v1           #pt:Lcom/htc/sync/provider/weather/XmlParser;
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCurrentLocationInfo(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V
    .locals 12
    .parameter "context"
    .parameter "req"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 33
    .local v10, currentLocations:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v10, :cond_5

    array-length v0, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 34
    const/4 v0, 0x0

    aget-object v11, v10, v0

    .line 35
    .local v11, sysCurrentLocation:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v11, :cond_0

    .line 39
    :cond_0
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 43
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 44
    :cond_1
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 46
    :cond_3
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 48
    :cond_4
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getCurLocCacheData()Lcom/htc/util/weather/WSPData;

    move-result-object v9

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    .line 55
    .end local v11           #sysCurrentLocation:Lcom/htc/util/weather/WeatherLocation;
    :cond_5
    return-void
.end method


# virtual methods
.method public getWeatherServiceURL(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 214
    :goto_0
    return-object v1

    .line 181
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?slat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&slon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&metric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?slat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&slon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&metric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    goto :goto_0

    .line 197
    :pswitch_2
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cityId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&metric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 203
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->getWeatherByCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&metric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;IZ)I
    .locals 19
    .parameter "context"
    .parameter "item"
    .parameter "source"
    .parameter "allowBackgroundData"

    .prologue
    .line 58
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sync/provider/weather/RequestDataHelper;->mContext:Landroid/content/Context;

    .line 59
    const/16 v18, 0x0

    .line 60
    .local v18, url:Ljava/lang/String;
    const/4 v14, 0x0

    .line 61
    .local v14, response:Ljava/lang/String;
    new-instance v3, Lcom/htc/util/weather/WSPPData;

    invoke-direct {v3}, Lcom/htc/util/weather/WSPPData;-><init>()V

    .line 62
    .local v3, data:Lcom/htc/util/weather/WSPPData;
    const/4 v15, 0x0

    .line 64
    .local v15, result:I
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sync/provider/weather/RequestDataHelper;->getWeatherServiceURL(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Ljava/lang/String;

    move-result-object v18

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 68
    invoke-direct/range {p0 .. p2}, Lcom/htc/sync/provider/weather/RequestDataHelper;->updateCurrentLocationInfo(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    .line 73
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLatTrim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLngTrim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocTimezoneId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/htc/util/weather/WSPPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v5, v0, :cond_7

    .line 89
    :cond_2
    const-string v5, "utf-8"

    const/16 v6, 0x1388

    const/16 v7, 0x1388

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6, v7}, Lcom/htc/sync/provider/weather/HttpURLConnectionHelper;->getText(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 91
    if-nez v14, :cond_3

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/htc/sync/provider/weather/ServiceURLHelper;->checkWCRUrl(Landroid/content/Context;)Z

    .line 95
    invoke-virtual/range {p0 .. p2}, Lcom/htc/sync/provider/weather/RequestDataHelper;->getWeatherServiceURL(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Ljava/lang/String;

    move-result-object v18

    .line 97
    const-string v5, "utf-8"

    const/16 v6, 0x1388

    const/16 v7, 0x1388

    move-object/from16 v0, v18

    invoke-static {v0, v5, v6, v7}, Lcom/htc/sync/provider/weather/HttpURLConnectionHelper;->getText(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    .line 105
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 106
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v17

    .line 107
    .local v17, sys:Lcom/htc/util/weather/WSPRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/htc/sync/provider/weather/RequestDataHelper;->updateCurrentLocationInfo(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 109
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 112
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 157
    .end local v15           #result:I
    .end local v17           #sys:Lcom/htc/util/weather/WSPRequest;
    .local v16, result:I
    :goto_2
    return v16

    .line 76
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_4
    const-string v5, "WSP"

    const-string v6, "type is current locaiton, but has no latitude"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v18, 0x0

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/util/weather/WSPPData;->setTypeLatitude(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WSPPData;->setTypeLocCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 118
    :cond_8
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 119
    const/4 v15, 0x1

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/htc/sync/provider/weather/RequestDataHelper;->parseXml(Ljava/lang/String;Lcom/htc/util/weather/WSPPData;)V

    .line 121
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/sync/provider/weather/Helper;->saveWeatherDataToCache(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 122
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    :cond_9
    :goto_3
    move/from16 v16, v15

    .line 157
    .end local v15           #result:I
    .restart local v16       #result:I
    goto :goto_2

    .line 129
    .end local v16           #result:I
    .restart local v15       #result:I
    :cond_a
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v5, v0, :cond_9

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 131
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getCurLocCacheData()Lcom/htc/util/weather/WSPData;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getCurLocCacheData()Lcom/htc/util/weather/WSPData;

    move-result-object v5

    check-cast v5, Lcom/htc/util/weather/WSPPData;

    move-object v4, v5

    .line 132
    .local v4, data2:Lcom/htc/util/weather/WSPPData;
    :goto_4
    if-eqz v4, :cond_b

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPPUtility;->isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 134
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPPUtility;->turnOffWSPCurrentLocationFlag(Landroid/content/Context;)V

    .line 138
    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 139
    const-string v5, "WSP"

    const-string v6, "current city name is equal to new city name, using current weather data"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLatTrim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLngTrim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocTimezoneId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v4 .. v12}, Lcom/htc/util/weather/WSPPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/sync/provider/weather/Helper;->saveWeatherDataToCache(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 143
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 150
    .end local v4           #data2:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v13

    .line 151
    .local v13, e:Ljava/lang/Exception;
    const-string v5, "WSP"

    const-string v6, "Exception occur in WSPPUtility.TYPE_CURRENT_LOCATION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 131
    .end local v13           #e:Ljava/lang/Exception;
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 146
    .restart local v4       #data2:Lcom/htc/util/weather/WSPPData;
    :cond_d
    :try_start_1
    const-string v5, "WSP"

    const-string v6, "data is null or not usable, using empty data"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/sync/provider/weather/Helper;->saveWeatherDataToCache(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 148
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
