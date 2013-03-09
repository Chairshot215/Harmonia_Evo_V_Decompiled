.class public Lcom/htc/cs/util/CSDatabaseUtil;
.super Ljava/lang/Object;
.source "CSDatabaseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;
    }
.end annotation


# static fields
.field public static final AUTHKEY_COLUMN:I = 0x9

.field public static final CMS_COLUMN:I = 0x4

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE_COLUMN:I = 0x1

.field public static final DEVICEID_COLUMN:I = 0xe

.field public static final EMAIL_COLUMN:I = 0xd

.field public static final HASHPW_COLUMN:I = 0xf

.field public static final IMC_COLUMN:I = 0x3

.field public static final KEY_AUTHKEY:Ljava/lang/String; = "authkey"

.field public static final KEY_CMS:Ljava/lang/String; = "cms"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DEVICEID:Ljava/lang/String; = "handsetDeviceId"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_HASHPW:Ljava/lang/String; = "hashpw"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_IMC:Ljava/lang/String; = "imc"

.field public static final KEY_PERSONALIZETTL:Ljava/lang/String; = "personalizettl"

.field public static final KEY_PERSONALIZEURL:Ljava/lang/String; = "personalize"

.field public static final KEY_SERVICE:Ljava/lang/String; = "service"

.field public static final KEY_SETUPURI:Ljava/lang/String; = "setup"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_STORETTL:Ljava/lang/String; = "storettl"

.field public static final KEY_STOREURL:Ljava/lang/String; = "store"

.field public static final KEY_TTL:Ljava/lang/String; = "ttl"

.field private static final LOG:Z = false

.field public static final PERSONALIZETTL_COLUMN:I = 0xc

.field public static final PERSONALIZE_COLUMN:I = 0x7

.field public static final SERVICE_COLUMN:I = 0x2

.field public static final SETUP_COLUMN:I = 0x8

.field public static final STATUS_COLUMN:I = 0x5

.field public static final STORETTL_COLUMN:I = 0xb

.field public static final STORE_COLUMN:I = 0x6

.field public static final TTL_COLUMN:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static ClearAccountInfo(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "email"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v3, "handsetDeviceId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "hashpw"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "authkey"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v3, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, count:I
    invoke-static {p0}, Lcom/htc/cs/util/CSDatabaseUtil;->getAccountInfo(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public static WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "email"
    .parameter "deviceID"
    .parameter "hashpw"

    .prologue
    .line 156
    new-instance v0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, writeAccountInfoThread:Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;
    invoke-virtual {v0}, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->start()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/htc/cs/util/CSDatabaseUtil;->getAccountInfo(Landroid/content/Context;)V

    return-void
.end method

.method private static getAccountInfo(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v10, ""

    .line 237
    .local v10, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/16 v1, 0xd

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, email:Ljava/lang/String;
    const/16 v1, 0xe

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, deviceID:Ljava/lang/String;
    const/16 v1, 0xf

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 250
    .end local v7           #deviceID:Ljava/lang/String;
    .end local v9           #email:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v8

    .line 252
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDate(Landroid/content/Context;)Ljava/lang/Long;
    .locals 9
    .parameter "context"

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 311
    .local v8, temp:Ljava/lang/Long;
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 312
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 315
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 316
    :catch_0
    move-exception v7

    .line 317
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getServiceURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 267
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 268
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 272
    :catch_0
    move-exception v7

    .line 273
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTTL(Landroid/content/Context;)Ljava/lang/Long;
    .locals 9
    .parameter "context"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 289
    .local v8, temp:Ljava/lang/Long;
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/16 v1, 0xa

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 293
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 294
    :catch_0
    move-exception v7

    .line 295
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    .line 97
    const-string v1, "MyHTC"

    const-string v2, "reading csengine database..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 101
    .local v12, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 103
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, serviceURI:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, CMSURI:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, IMCURI:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, statusURI:Ljava/lang/String;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceURI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMSURI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMCURI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusURI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-static {p0, v10}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    sput-object v10, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    move-object v12, v10

    .line 131
    .end local v6           #CMSURI:Ljava/lang/String;
    .end local v7           #IMCURI:Ljava/lang/String;
    .end local v10           #serviceURI:Ljava/lang/String;
    .end local v11           #statusURI:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v8           #c:Landroid/database/Cursor;
    :goto_0
    if-nez v12, :cond_1

    .line 138
    const-string v1, "MyHTC"

    const-string v2, "nothing to read."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    return-object v12

    .line 132
    :catch_0
    move-exception v9

    .line 133
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "MyHTC"

    const-string v2, "read csengine database fails."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
