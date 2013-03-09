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
    .line 31
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cslib/util/CSAppProvisioning;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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
    .line 50
    const-string v7, "profiler.csserialnum"

    const-string v8, "ro.serialno"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, serialNum:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cslib/util/CSEngineUtil;->getProvServeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, provURL:Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, ""

    if-ne v3, v7, :cond_3

    .line 55
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

    .line 63
    :goto_0
    :try_start_0
    sget-object v7, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v8, ""

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, output:Ljava/lang/String;
    const-string v7, "stores"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "personalize"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    :cond_1
    new-instance v4, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-direct {v4}, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;-><init>()V

    .line 67
    .local v4, retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    new-instance v7, Lcom/htc/cslib/util/CSAppProvisioning$1;

    invoke-direct {v7}, Lcom/htc/cslib/util/CSAppProvisioning$1;-><init>()V

    invoke-virtual {v7}, Lcom/htc/cslib/util/CSAppProvisioning$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 68
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-static {v4, v2, v7, v1}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    check-cast v4, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    .line 72
    .restart local v4       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    const-string v7, "stores"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    invoke-static {p1, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :cond_2
    :goto_1
    return-void

    .line 57
    .end local v2           #output:Ljava/lang/String;
    :cond_3
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

    .line 76
    .restart local v1       #genericType:Ljava/lang/reflect/Type;
    .restart local v2       #output:Ljava/lang/String;
    .restart local v4       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :cond_4
    :try_start_1
    invoke-static {p1, v4}, Lcom/htc/cslib/util/CSAppProvisioning;->setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #output:Ljava/lang/String;
    .end local v4           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :catch_0
    move-exception v0

    .line 86
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

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 88
    throw v0
.end method

.method public static clearConfig(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 184
    invoke-static {p0}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/htc/cslib/util/CSAppProvisioning;->getSignInFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 188
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ttl"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    invoke-static {p0, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->setSignInFlag(Landroid/content/Context;Z)V

    .line 196
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p0}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/htc/cslib/util/CSAppProvisioning;->getSignInFlag(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 200
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ttl"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/htc/cslib/util/CSAppProvisioning;->setSignInFlag(Landroid/content/Context;Z)V

    .line 208
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static getBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 133
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "baseURL"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getScenesBaseUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 144
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "scenesBaseUri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getScenesTTL(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 177
    const-string v3, "appConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "scenettl"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 179
    .local v1, value:J
    return-wide v1
.end method

.method public static getSetUpURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 155
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "setupURI"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getSignInFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 220
    const-string v2, "appConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "signedIn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 222
    .local v1, value:Z
    return v1
.end method

.method public static getTTL(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 166
    const-string v3, "appConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ttl"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 168
    .local v1, value:J
    return-wide v1
.end method

.method public static setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 11
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 98
    const-string v7, "appConfig"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 100
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "scenesBaseUri"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;->scenesBaseUri:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 103
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 104
    .local v1, currentTime:J
    iget-object v7, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 105
    .local v5, ttl:J
    const-string v7, "scenettl"

    add-long v8, v5, v1

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public static setSignInFlag(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "result"

    .prologue
    .line 211
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "signedIn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method public static setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 11
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 115
    const-string v7, "appConfig"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 116
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 117
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "baseURL"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->baseURL:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v7, "setupURI"

    iget-object v8, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v8, v8, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->setupURI:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 122
    .local v1, currentTime:J
    iget-object v7, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v7, v7, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    const-wide/16 v9, 0x3e8

    mul-long v5, v7, v9

    .line 123
    .local v5, ttl:J
    const-string v7, "ttl"

    add-long v8, v5, v1

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method
