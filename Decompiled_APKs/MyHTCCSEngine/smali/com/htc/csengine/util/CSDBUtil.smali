.class public Lcom/htc/csengine/util/CSDBUtil;
.super Ljava/lang/Object;
.source "CSDBUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteRecord(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;)V
    .locals 14
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    .line 33
    const-string v1, "cslib"

    const-string v2, " Write DB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 37
    .local v8, count:I
    :try_start_0
    sget-object v1, Lcom/htc/csengine/provider/CSEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "service"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->ServiceUri:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "imc"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->ImcUri:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "cms"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->CmsUri:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "status"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->UpUri:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->cscore:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;

    iget-object v1, v1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v1, v1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 53
    .local v12, ttl:Ljava/lang/Long;
    const-string v1, "ttl"

    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v1, "store"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->baseURL:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "setup"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WStoreConfig;->setupURI:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "storettl"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->stores:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSStores;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v1, "personalize"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WPersonalizeConfig;->scenesBaseUri:Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "personalizettl"

    iget-object v2, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WDeviceConfig;->personalize:Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;

    iget-object v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSPersonalize;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v2, v2, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 63
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 65
    .local v9, currentTime:J
    const-string v1, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    if-eqz v8, :cond_0

    .line 67
    sget-object v1, Lcom/htc/csengine/provider/CSEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    :goto_1
    const-string v1, "cslib"

    const-string v2, " Write DB Done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 40
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v9           #currentTime:J
    .end local v12           #ttl:Ljava/lang/Long;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 42
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 69
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #calendar:Ljava/util/Calendar;
    .restart local v9       #currentTime:J
    .restart local v12       #ttl:Ljava/lang/Long;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v1, Lcom/htc/csengine/provider/CSEngineProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
