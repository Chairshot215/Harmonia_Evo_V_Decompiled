.class public Lcom/htc/cslib/util/CSAppProvisioning;
.super Ljava/lang/Object;
.source "CSAppProvisioning.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final baseURL:Ljava/lang/String; = "https://dm.htcsense.com/"

.field public static final preferenceName:Ljava/lang/String; = "appConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cslib/util/CSAppProvisioning;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCSAppConfig(Lcom/htc/cslib/restHelper/CSRestProxy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "csrest"
    .parameter "context"
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const-string v7, "profiler.csserialnum"

    const-string v8, "ro.serialno"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, serialNum:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cslib/util/CSEngineUtil;->getProvServeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, provURL:Ljava/lang/String;
    const/4 v6, 0x0

    .line 55
    .local v6, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, ""

    if-ne v3, v7, :cond_2

    .line 56
    :cond_0
    const-string v7, "%sdevices/%s/config?names=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "https://dm.htcsense.com/"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 64
    :goto_0
    :try_start_0
    sget-object v7, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v8, ""

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, output:Ljava/lang/String;
    const-string v7, "stores"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "personalize"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 67
    :cond_1
    new-instance v4, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-direct {v4}, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;-><init>()V

    .line 68
    .local v4, retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    new-instance v7, Lcom/htc/cslib/util/CSAppProvisioning$1;

    invoke-direct {v7}, Lcom/htc/cslib/util/CSAppProvisioning$1;-><init>()V

    invoke-virtual {v7}, Lcom/htc/cslib/util/CSAppProvisioning$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 69
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-static {v4, v2, v7, v1}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    check-cast v4, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    .line 73
    .restart local v4       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    const-string v7, "stores"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    invoke-static {p1, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :goto_1
    return-void

    .line 58
    .end local v2           #output:Ljava/lang/String;
    :cond_2
    const-string v7, "%sdevices/%s/config?names=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 77
    .restart local v1       #genericType:Ljava/lang/reflect/Type;
    .restart local v2       #output:Ljava/lang/String;
    .restart local v4       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :cond_3
    :try_start_1
    invoke-static {p1, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 85
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #output:Ljava/lang/String;
    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "cslib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP Get e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 89
    throw v0

    .line 81
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #output:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {p1, v2, p2}, Lcom/htc/cslib/util/CSAppProvisioning;->setProvisioningData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static clearConfig(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 227
    invoke-static {p0}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/htc/cslib/util/CSAppProvisioning;->getSignInFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 231
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ttl"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    invoke-static {p0, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->setSignInFlag(Landroid/content/Context;Z)V

    .line 239
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p0}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/htc/cslib/util/CSAppProvisioning;->getSignInFlag(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ttl"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/htc/cslib/util/CSAppProvisioning;->setSignInFlag(Landroid/content/Context;Z)V

    .line 251
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static getBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 164
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "baseURL"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getProvisioningData(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 198
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "provisioningData"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 175
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "scenesBaseUri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getScenesTTL(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 220
    const-string v3, "appConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "scenettl"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 222
    .local v1, value:J
    return-wide v1
.end method

.method public static getSetUpURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 186
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "setupURI"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getSignInFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "signedIn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 265
    .local v1, value:Z
    return v1
.end method

.method public static getTTL(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 209
    const-string v3, "appConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ttl"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 211
    .local v1, value:J
    return-wide v1
.end method

.method public static setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 11
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 99
    const-string v7, "appConfig"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 100
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 101
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "scenesBaseUri"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;->scenesBaseUri:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 105
    .local v1, currentTime:J
    iget-object v7, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 106
    .local v5, ttl:J
    const-string v7, "scenettl"

    add-long v8, v5, v1

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public static setProvisioningData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "context"
    .parameter "output"
    .parameter "app"

    .prologue
    .line 136
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, jObject:Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 138
    .local v11, provObject:Lorg/json/JSONObject;
    const-string v15, "meta"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 139
    .local v9, metaObject:Lorg/json/JSONObject;
    const-string v15, "config"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    .local v3, configObject:Lorg/json/JSONObject;
    const-string v15, "ttl"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 142
    .local v14, ttltime:Ljava/lang/Long;
    const-string v15, "appConfig"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 143
    .local v10, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 144
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v15, "provisioningData"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v15, "GMT"

    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 147
    .local v2, calendar:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 148
    .local v4, currentTime:J
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v12, v15, v17

    .line 149
    .local v12, ttl:J
    const-string v15, "ttl"

    add-long v16, v12, v4

    move-wide/from16 v0, v16

    invoke-interface {v7, v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v3           #configObject:Lorg/json/JSONObject;
    .end local v4           #currentTime:J
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #jObject:Lorg/json/JSONObject;
    .end local v9           #metaObject:Lorg/json/JSONObject;
    .end local v10           #preferences:Landroid/content/SharedPreferences;
    .end local v11           #provObject:Lorg/json/JSONObject;
    .end local v12           #ttl:J
    .end local v14           #ttltime:Ljava/lang/Long;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v6

    .line 154
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSignInFlag(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "result"

    .prologue
    .line 254
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "signedIn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method public static setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 11
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 116
    const-string v7, "appConfig"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 117
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 118
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "baseURL"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->baseURL:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v7, "setupURI"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->setupURI:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 123
    .local v1, currentTime:J
    iget-object v7, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 124
    .local v5, ttl:J
    const-string v7, "ttl"

    add-long v8, v5, v1

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method
