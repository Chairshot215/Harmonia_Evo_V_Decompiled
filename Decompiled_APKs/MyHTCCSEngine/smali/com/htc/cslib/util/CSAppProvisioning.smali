.class public Lcom/htc/cslib/util/CSAppProvisioning;
.super Ljava/lang/Object;
.source "CSAppProvisioning.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final baseURL:Ljava/lang/String; = "http://provision-test.dev.csh.tc/"

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
    .locals 10
    .parameter "csrest"
    .parameter "context"
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-string v6, "ro.serialno"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, serialNum:Ljava/lang/String;
    const-string v6, "%sdevices/%s/config?names=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "http://provision-test.dev.csh.tc/"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, url:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, output:Ljava/lang/String;
    const-string v6, "stores"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "personalize"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    :cond_0
    new-instance v3, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-direct {v3}, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;-><init>()V

    .line 57
    .local v3, retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    new-instance v6, Lcom/htc/cslib/util/CSAppProvisioning$1;

    invoke-direct {v6}, Lcom/htc/cslib/util/CSAppProvisioning$1;-><init>()V

    invoke-virtual {v6}, Lcom/htc/cslib/util/CSAppProvisioning$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 58
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    invoke-static {v3, v2, v6, v1}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    check-cast v3, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;

    .line 62
    .restart local v3       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    const-string v6, "stores"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    invoke-static {p1, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V

    .line 80
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v1       #genericType:Ljava/lang/reflect/Type;
    .restart local v3       #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :cond_2
    invoke-static {p1, v3}, Lcom/htc/cslib/util/CSAppProvisioning;->setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #output:Ljava/lang/String;
    .end local v3           #retObj:Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "cslib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP Get e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 78
    throw v0
.end method

.method public static getBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 123
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "baseURL"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getSetUpURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 134
    const-string v2, "appConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "setupURI"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getTTL(Landroid/content/Context;)Ljava/lang/Long;
    .locals 8
    .parameter "context"

    .prologue
    .line 145
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 146
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 148
    .local v1, currentTime:J
    const-string v5, "appConfig"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 149
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "ttl"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 150
    .local v4, value:Ljava/lang/Long;
    return-object v4
.end method

.method public static setPersonalizeConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 8
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 88
    const-string v5, "appConfig"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 89
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 90
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "baseURL"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;->scenesBaseUri:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 95
    .local v1, currentTime:J
    const-string v5, "ttl"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    add-long/2addr v6, v1

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method

.method public static setStoreConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 8
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 105
    const-string v5, "appConfig"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 107
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "baseURL"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->baseURL:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v5, "setupURI"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->setupURI:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 113
    .local v1, currentTime:J
    const-string v5, "ttl"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    add-long/2addr v6, v1

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method
