.class Lcom/htc/sync/provider/weather/Receiver$1;
.super Ljava/lang/Object;
.source "Receiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sync/provider/weather/Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sync/provider/weather/Receiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/sync/provider/weather/Receiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->this$0:Lcom/htc/sync/provider/weather/Receiver;

    iput-object p2, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateCurrentLocationInfo(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V
    .locals 12
    .parameter "context"
    .parameter "req"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    .line 107
    .local v10, currentLocations:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v10, :cond_4

    array-length v0, v10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 108
    const/4 v0, 0x0

    aget-object v11, v10, v0

    .line 110
    .local v11, sysCurrentLocation:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 114
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 116
    :cond_1
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 117
    :cond_2
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 119
    :cond_3
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

    .line 126
    .end local v11           #sysCurrentLocation:Lcom/htc/util/weather/WeatherLocation;
    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 69
    const-string v1, "WSP"

    const-string v2, "[Receiver] EVENT - CURRENT LOCATION CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v9

    .line 71
    .local v9, req:Lcom/htc/util/weather/WSPRequest;
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    .line 73
    .local v0, data:Lcom/htc/util/weather/WSPPData;
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "WSP"

    const-string v2, "[Receiver] current location is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "WSP"

    const-string v2, "[Receiver] AutoSync is off, send out new city name"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, v1, v9}, Lcom/htc/sync/provider/weather/Receiver$1;->updateCurrentLocationInfo(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 85
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "WSP"

    const-string v2, "[Receiver] current city name is equal to new city name, using current weather data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1
    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLatTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocLngTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/htc/util/weather/WSPRequest;->getReqCurLocTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/util/weather/WSPPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/sync/provider/weather/Helper;->saveWeatherDataToCache(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 100
    iget-object v1, p0, Lcom/htc/sync/provider/weather/Receiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/util/weather/WSPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPData;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "WSP"

    const-string v2, "[Receiver] data is null or not usable, create one"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/htc/util/weather/WSPPData;

    .end local v0           #data:Lcom/htc/util/weather/WSPPData;
    invoke-direct {v0}, Lcom/htc/util/weather/WSPPData;-><init>()V

    .restart local v0       #data:Lcom/htc/util/weather/WSPPData;
    goto :goto_1
.end method
