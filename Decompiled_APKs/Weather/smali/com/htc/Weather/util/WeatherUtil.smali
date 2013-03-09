.class public Lcom/htc/Weather/util/WeatherUtil;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# static fields
.field private static PREFS_NAME:Ljava/lang/String;

.field public static count:I

.field public static orientation:I

.field public static totalVideoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "com.htc.Weather"

    sput-object v0, Lcom/htc/Weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/htc/Weather/util/WeatherUtil;->totalVideoCount:I

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/htc/Weather/util/WeatherUtil;->count:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForecastIconResId(Landroid/content/Context;[Ljava/lang/String;)[I
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 57
    array-length v0, p1

    .line 58
    .local v0, count:I
    new-array v2, v0, [I

    .line 61
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/Weather/widget/IconPicker;->getForecastIconId(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v2
.end method

.method public static getStateListDrawableFromSkinUtil(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .parameter "context"
    .parameter "press"
    .parameter "pressid"
    .parameter "select"
    .parameter "selectid"
    .parameter "focus"
    .parameter "focusid"
    .parameter "rest"
    .parameter "restid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 120
    .local v0, BG:Landroid/graphics/drawable/StateListDrawable;
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 121
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    if-eqz p3, :cond_1

    if-ltz p4, :cond_1

    .line 126
    new-array v1, v5, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p3, p4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_1
    if-eqz p7, :cond_2

    if-ltz p8, :cond_2

    .line 131
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p7, p8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_2
    return-object v0

    .line 131
    nop

    :array_0
    .array-data 0x4
        0x59t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data
.end method

.method public static isLocationSettingChecked(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 101
    :try_start_0
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 102
    .local v1, service:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 105
    .end local v1           #service:Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNetworkActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 86
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, isRoaming:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 93
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 96
    :cond_0
    return v0
.end method

.method public static loadSharePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 76
    sget-object v2, Lcom/htc/Weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, prefix:Ljava/lang/String;
    return-object v0
.end method

.method public static makeRequest(Lcom/htc/Weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;
    .locals 4
    .parameter "cityinfo"

    .prologue
    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 40
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 46
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public static saveSharePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 68
    sget-object v2, Lcom/htc/Weather/util/WeatherUtil;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 72
    .local v0, commit:Z
    return-void
.end method

.method public static sendBroadcaseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "extras"
    .parameter "value"

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
