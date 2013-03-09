.class public Lcom/htc/reportagent/pbdata/DeviceInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoHelper.java"


# static fields
.field private static final BIG_A:I = 0x41

.field private static final BIG_Z:I = 0x5a

.field private static final HACKER_SN:Ljava/lang/String; = "HackerDevice"

.field private static final NINE:I = 0x39

.field private static final SMALL_A:I = 0x61

.field private static final SMALL_Z:I = 0x7a

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZERO:I = 0x30

.field private static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 226
    const-string v0, "ro.cid"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCIDByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 230
    const-string v0, "1"

    const-string v1, "cid"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "unknown"

    invoke-static {v0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "defaultCity"

    .prologue
    .line 96
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 97
    .local v1, lm:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCurrentLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCityByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, city:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private static getCityByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "loc"

    .prologue
    .line 134
    const/4 v9, 0x0

    .line 135
    .local v9, city:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 136
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 137
    .local v0, gcd:Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 139
    .local v7, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 145
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 147
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, adminArea:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, subAdminArea:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, locality:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v11, jobject:Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "AdminArea"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "SubAdminArea"

    invoke-virtual {v11, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "Locality"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 162
    .end local v0           #gcd:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v8           #adminArea:Ljava/lang/String;
    .end local v11           #jobject:Lorg/json/JSONObject;
    .end local v12           #locality:Ljava/lang/String;
    .end local v13           #subAdminArea:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 140
    .restart local v0       #gcd:Landroid/location/Geocoder;
    .restart local v7       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v10

    .line 141
    .local v10, e:Ljava/io/IOException;
    sget-object v1, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCityByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 143
    .local v10, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCityByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #address:Landroid/location/Address;
    .restart local v8       #adminArea:Ljava/lang/String;
    .restart local v11       #jobject:Lorg/json/JSONObject;
    .restart local v12       #locality:Ljava/lang/String;
    .restart local v13       #subAdminArea:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 157
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCityByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 102
    const-string v0, "1"

    const-string v1, "city"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "unknown"

    invoke-static {p0, v0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getCountryCodeByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "loc"

    .prologue
    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, countryCode:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 169
    .local v0, gcd:Landroid/location/Geocoder;
    const/4 v6, 0x0

    .line 171
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 177
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    .line 181
    .end local v0           #gcd:Landroid/location/Geocoder;
    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    return-object v7

    .line 172
    .restart local v0       #gcd:Landroid/location/Geocoder;
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v8

    .line 173
    .local v8, e:Ljava/io/IOException;
    sget-object v1, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCountryCodeByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 175
    .local v8, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCountryCodeByLocation] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCountryCodeFromLocationManager(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "defaultCountry"

    .prologue
    .line 111
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 112
    .local v1, lm:Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCurrentLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCountryCodeByLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method private static getCurrentLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 4
    .parameter "lm"

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, loc:Landroid/location/Location;
    if-eqz p0, :cond_0

    .line 119
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 121
    .local v0, crit:Landroid/location/Criteria;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, provider:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 129
    .end local v0           #crit:Landroid/location/Criteria;
    .end local v2           #provider:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getDeviceSN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 310
    const-string v0, "ro.serialno"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorReportPrivacyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "error_report_privacy_version"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, privacyVersion:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1.0"

    .end local v0           #privacyVersion:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getFilteredDeviceSNByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 314
    const-string v0, "1"

    const-string v1, "device_sn"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->isHackerDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "HackerDevice"

    .line 324
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    :cond_1
    invoke-static {p0}, Lcom/htc/utils/sys/DeviceInfo;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_2
    const-string v0, "unknown"

    invoke-static {v0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getDeviceSN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_3
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getFilteredIMEIByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 293
    const-string v0, "1"

    const-string v1, "device_id"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->isHackerDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "HackerDevice"

    .line 303
    :goto_0
    return-object v0

    .line 297
    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    :cond_1
    invoke-static {p0}, Lcom/htc/utils/sys/DeviceInfo;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_3
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 283
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 284
    .local v1, telmgr:Landroid/telephony/TelephonyManager;
    const-string v0, ""

    .line 285
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "-1"

    .line 289
    :cond_0
    return-object v0
.end method

.method public static getLogDeviceInfo(Landroid/content/Context;Z)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 3
    .parameter "ctx"
    .parameter "isErrorReport"

    .prologue
    .line 54
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    .line 55
    .local v0, deviceInfoBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    new-instance v1, Lcom/htc/utils/ulog/UPolicy;

    const-string v2, "tellhtc.header"

    invoke-direct {v1, v2}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, policy:Lcom/htc/utils/ulog/UPolicy;
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRegionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 58
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCityByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCity(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 59
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getTimeZoneByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setTimeZone(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 60
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCIDByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 61
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRomVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 62
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getSenseVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setSenseVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 63
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getModelIdByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 64
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getFilteredIMEIByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 65
    invoke-static {p0, v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getFilteredDeviceSNByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 66
    invoke-static {p0, v1, p1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getPrivacyVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setPrivacyStatementVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 68
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method private static getModelId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 265
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const-string v0, "ro.aa.project"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.product.device"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getModelIdByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 274
    const-string v0, "1"

    const-string v1, "model_id"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "unknown"

    invoke-static {v0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getModelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method public static getPolicyDeviceInfo(Landroid/content/Context;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    .line 39
    .local v0, deviceInfoBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRegion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 40
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCity(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 41
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getTimeZone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setTimeZone(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 42
    const-string v1, "unknown"

    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setCid(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 43
    const-string v1, "unknown"

    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setRomVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 44
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getSenseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setSenseVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 45
    const-string v1, "unknown"

    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getModelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setModelId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 46
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 47
    const-string v1, "unknown"

    invoke-static {v1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getDeviceSN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setDeviceSN(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 48
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->setPrivacyStatementVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 50
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method private static getPrivacyVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"
    .parameter "isErrorReport"

    .prologue
    .line 212
    const-string v0, "1"

    const-string v1, "privacy_statement_version"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    if-eqz p2, :cond_0

    .line 214
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getErrorReportPrivacyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getUserProfilingPrivacyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "NA"

    goto :goto_0
.end method

.method public static getRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 73
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 74
    .local v1, telmgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getCountryCodeFromLocationManager(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    const-string v0, "unknown"

    .line 83
    :cond_3
    return-object v0
.end method

.method public static getRegionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 87
    const-string v0, "1"

    const-string v1, "region"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method public static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 239
    const-string v0, "ro.build.description"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRomVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 243
    const-string v0, "1"

    const-string v1, "rom_version"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "unknown"

    invoke-static {v0}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getSenseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    return-object v0
.end method

.method private static getSenseVersionByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 256
    const-string v0, "1"

    const-string v1, "sense_version"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NA"

    goto :goto_0
.end method

.method private static getTimeZone()I
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 188
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 189
    .local v0, daylight:Z
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    :goto_0
    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getTimeZoneByPolicy(Landroid/content/Context;Lcom/htc/utils/ulog/UPolicy;)I
    .locals 3
    .parameter "ctx"
    .parameter "policy"

    .prologue
    .line 193
    const-string v0, "1"

    const-string v1, "timezone"

    const-string v2, "enable"

    invoke-virtual {p1, v1, v2}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getTimeZone()I

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method private static getUserProfilingPrivacyVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_profile_privacy_version"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, privacyVersion:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1.0"

    .end local v0           #privacyVersion:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static isHackerDevice()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 340
    const-string v4, "ro.serialno"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, sn:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v3

    .line 342
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xffff

    and-int v2, v4, v5

    .line 345
    .local v2, sting:I
    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7a

    if-le v2, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x5a

    if-le v2, v4, :cond_4

    :cond_3
    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 342
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v2           #sting:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method
