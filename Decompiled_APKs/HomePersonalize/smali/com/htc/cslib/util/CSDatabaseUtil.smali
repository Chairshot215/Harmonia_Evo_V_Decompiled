.class public Lcom/htc/cslib/util/CSDatabaseUtil;
.super Ljava/lang/Object;
.source "CSDatabaseUtil.java"


# static fields
.field private static final AUTHKEY_COLUMN:I = 0x9

.field private static final CMS_COLUMN:I = 0x4

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATE_COLUMN:I = 0x1

.field private static final IMC_COLUMN:I = 0x3

.field private static final KEY_AUTHKEY:Ljava/lang/String; = "authkey"

.field private static final KEY_CMS:Ljava/lang/String; = "cms"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_IMC:Ljava/lang/String; = "imc"

.field private static final KEY_PERSONALIZETTL:Ljava/lang/String; = "personalizettl"

.field private static final KEY_PERSONALIZEURL:Ljava/lang/String; = "personalize"

.field private static final KEY_SERVICE:Ljava/lang/String; = "service"

.field private static final KEY_SETUPURI:Ljava/lang/String; = "setup"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_STORETTL:Ljava/lang/String; = "storettl"

.field private static final KEY_STOREURL:Ljava/lang/String; = "store"

.field private static final KEY_TTL:Ljava/lang/String; = "ttl"

.field private static final PERSONALIZETTL_COLUMN:I = 0xc

.field private static final PERSONALIZE_COLUMN:I = 0x7

.field private static final SERVICE_COLUMN:I = 0x2

.field private static final SETUP_COLUMN:I = 0x8

.field private static final STATUS_COLUMN:I = 0x5

.field private static final STORETTL_COLUMN:I = 0xb

.field private static final STORE_COLUMN:I = 0x6

.field private static final TTL_COLUMN:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 235
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 240
    :catch_0
    move-exception v7

    .line 242
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBaseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 126
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 130
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 131
    :catch_0
    move-exception v7

    .line 133
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCMSURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 104
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 108
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 109
    :catch_0
    move-exception v7

    .line 111
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDate(Landroid/content/Context;)Ljava/lang/Long;
    .locals 9
    .parameter "context"

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 214
    .local v8, temp:Ljava/lang/Long;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 218
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 219
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPersonalizeBaseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 149
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 153
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 154
    :catch_0
    move-exception v7

    .line 156
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getServiceURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 83
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 88
    :catch_0
    move-exception v7

    .line 90
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSetUpUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 172
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/16 v1, 0x8

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 176
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 177
    :catch_0
    move-exception v7

    .line 179
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTTL(Landroid/content/Context;)Ljava/lang/Long;
    .locals 9
    .parameter "context"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 193
    .local v8, temp:Ljava/lang/Long;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 197
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 198
    :catch_0
    move-exception v7

    .line 200
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAuthKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "authkey"

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "authkey"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v2, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public static setServiceUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "service"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v2, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public static writeDeviceConfig(Landroid/content/Context;Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;)V
    .locals 8
    .parameter "context"
    .parameter "myDeviceConfigClass"

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "service"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->ServiceUri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "imc"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->ImcUri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "cms"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->CmsUri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v5, "status"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->config:Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;

    iget-object v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WConfig;->UpUri:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v5, "ttl"

    iget-object v6, p1, Lcom/htc/cslib/payload/MyDeviceConfigClass$WCSCore;->meta:Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;

    iget-wide v6, v6, Lcom/htc/cslib/payload/MyDeviceConfigClass$WMeta;->ttl:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 69
    .local v2, currentTime:J
    const-string v5, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    sget-object v5, Lcom/htc/cslib/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 72
    return-void
.end method
