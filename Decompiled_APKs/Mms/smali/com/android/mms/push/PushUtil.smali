.class public Lcom/android/mms/push/PushUtil;
.super Ljava/lang/Object;
.source "PushUtil.java"


# static fields
.field static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field static final CHARSET_ISO_8859_2:Ljava/lang/String; = "ISO-8859-2"

.field static final CHARSET_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16"

.field static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final LOG_TAG:Ljava/lang/String; = "PushUtil"

.field private static final NOTIFY_VIBRATE:[J = null

.field static final PUSH_WBXML_CHARSET_ISO_8859_1:I = 0x4

.field static final PUSH_WBXML_CHARSET_ISO_8859_2:I = 0x5

.field static final PUSH_WBXML_CHARSET_US_ASCII:I = 0x3

.field static final PUSH_WBXML_CHARSET_UTF_16:I = 0x3f7

.field static final PUSH_WBXML_CHARSET_UTF_8:I = 0x6a

.field static final SI_COLUMN_ACTION:I = 0x4

.field static final SI_COLUMN_CONTENT:I = 0x3

.field static final SI_COLUMN_CREATED:I = 0x5

.field static final SI_COLUMN_EXPIRES:I = 0x6

.field static final SI_COLUMN_HREF:I = 0x2

.field static final SI_COLUMN_ID:I = 0x0

.field static final SI_COLUMN_ISREAD:I = 0x1

.field static final SI_COLUMN_SI_ID:I = 0x7

.field static final SI_PROJECTION:[Ljava/lang/String; = null

.field static final SI_SELECTION:Ljava/lang/String; = "si_id = ?"

.field static final SL_COLUMN_ACTION:I = 0x4

.field static final SL_COLUMN_CONTENT:I = 0x3

.field static final SL_COLUMN_HREF:I = 0x2

.field static final SL_COLUMN_ID:I = 0x0

.field static final SL_COLUMN_ISREAD:I = 0x1

.field private static final SL_PRI_TABLE:[[Z = null

.field static final SL_PROJECTION:[Ljava/lang/String; = null

.field static final SL_SELECTION:Ljava/lang/String; = "href = ?"

.field static final URI:Ljava/lang/String; = "Uri"

.field private static sSelectionArgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 50
    const-string v0, "wsp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "isRead"

    aput-object v1, v0, v4

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v3

    const-string v1, "action"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "si_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/push/PushUtil;->SI_PROJECTION:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "isRead"

    aput-object v1, v0, v4

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "content"

    aput-object v1, v0, v3

    const-string v1, "action"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/push/PushUtil;->SL_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v3, [[Z

    new-array v1, v3, [Z

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [Z

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [Z

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/push/PushUtil;->SL_PRI_TABLE:[[Z

    .line 98
    new-array v0, v7, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/push/PushUtil;->NOTIFY_VIBRATE:[J

    return-void

    .line 95
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 98
    :array_3
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 479
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 482
    .local v0, nm:Landroid/app/NotificationManager;
    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 483
    return-void
.end method

.method public static deleteExpiredSi(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/SiMessage;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "si_expires <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public static getCharset(I)Ljava/lang/String;
    .locals 1
    .parameter "charset"

    .prologue
    .line 108
    sparse-switch p0, :sswitch_data_0

    .line 120
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :sswitch_0
    const-string v0, "US-ASCII"

    goto :goto_0

    .line 112
    :sswitch_1
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 114
    :sswitch_2
    const-string v0, "ISO-8859-2"

    goto :goto_0

    .line 116
    :sswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 118
    :sswitch_4
    const-string v0, "UTF-16"

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6a -> :sswitch_3
        0x3f7 -> :sswitch_4
    .end sparse-switch
.end method

.method public static native nativeParseCo([BILandroid/content/ContentValues;)Z
.end method

.method public static native nativeParseSi([BILandroid/content/ContentValues;)Z
.end method

.method public static native nativeParseSl([BILandroid/content/ContentValues;)Z
.end method

.method public static declared-synchronized processCo(Landroid/content/Context;[B)V
    .locals 5
    .parameter "context"
    .parameter "coWbxmlContent"

    .prologue
    .line 366
    const-class v3, Lcom/android/mms/push/PushUtil;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v0, values:Landroid/content/ContentValues;
    array-length v2, p1

    invoke-static {p1, v2, v0}, Lcom/android/mms/push/PushUtil;->nativeParseCo([BILandroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const-string v2, "PushUtil"

    const-string v4, "Fail to parse received CO!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_0
    monitor-exit v3

    return-void

    .line 373
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/mms/push/PushUtil;->resolveRelativeURI(Landroid/content/ContentValues;)V

    .line 383
    const-string v2, "InitiatorUri"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, xWapInitiator:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 386
    const-string v2, "ContentUri"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    if-nez v1, :cond_1

    .line 388
    const-string v2, "ContentLocation"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_1
    const-string v2, "InitiatorUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_2
    invoke-static {}, Lcom/android/mms/wrapper/CacheSyncManager;->getInstance()Lcom/android/mms/wrapper/CacheSyncManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/wrapper/CacheSyncManager;->syncPushCo(Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    .end local v0           #values:Landroid/content/ContentValues;
    .end local v1           #xWapInitiator:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static processOutOfOrderDelivery(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 226
    const-string v0, "si_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, newSiId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    .line 259
    :goto_0
    return v0

    .line 232
    :cond_0
    const-string v0, "created"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 234
    .local v7, newCreatedTime:Ljava/lang/Long;
    if-nez v7, :cond_1

    move v0, v11

    .line 235
    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    aput-object v8, v0, v11

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/SiMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/push/PushUtil;->SI_PROJECTION:[Ljava/lang/String;

    const-string v3, "si_id = ?"

    sget-object v4, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v9, 0x7fffffffffffffffL

    .line 245
    .local v9, oldCreatedTime:J
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-lez v0, :cond_3

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/SiMessage;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "si_id = ?"

    sget-object v3, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v11

    .line 252
    goto :goto_0

    .line 244
    .end local v9           #oldCreatedTime:J
    :cond_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    goto :goto_1

    .line 255
    .restart local v9       #oldCreatedTime:J
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    .end local v9           #oldCreatedTime:J
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v11

    .line 259
    goto :goto_0
.end method

.method public static declared-synchronized processSi(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 23
    .parameter "context"
    .parameter "siWbxmlContent"
    .parameter "phoneNumber"

    .prologue
    .line 135
    const-class v16, Lcom/android/mms/push/PushUtil;

    monitor-enter v16

    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v14, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/android/mms/push/PushUtil;->nativeParseSi([BILandroid/content/ContentValues;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 138
    const-string v15, "PushUtil"

    const-string v17, "Fail to parse received SI!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit v16

    return-void

    .line 142
    :cond_0
    :try_start_1
    const-string v15, "charset"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 143
    .local v2, charset:J
    long-to-int v15, v2

    invoke-static {v15}, Lcom/android/mms/push/PushUtil;->getCharset(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, charsetString:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 145
    const-string v15, "PushUtil"

    const-string v17, "Unsupport charset, while parse received SI!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v2           #charset:J
    .end local v4           #charsetString:Ljava/lang/String;
    .end local v14           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 149
    .restart local v2       #charset:J
    .restart local v4       #charsetString:Ljava/lang/String;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v8, 0x0

    .line 150
    .local v8, href:Ljava/lang/String;
    const/4 v11, 0x0

    .line 151
    .local v11, si_id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 153
    .local v5, content:Ljava/lang/String;
    :try_start_2
    new-instance v9, Ljava/lang/String;

    const-string v15, "href"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v9, v15, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v8           #href:Ljava/lang/String;
    .local v9, href:Ljava/lang/String;
    :try_start_3
    new-instance v12, Ljava/lang/String;

    const-string v15, "si_id"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v12, v15, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    .end local v11           #si_id:Ljava/lang/String;
    .local v12, si_id:Ljava/lang/String;
    :try_start_4
    new-instance v5, Ljava/lang/String;

    .end local v5           #content:Ljava/lang/String;
    const-string v15, "content"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v15

    invoke-direct {v5, v15, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 161
    .restart local v5       #content:Ljava/lang/String;
    :try_start_5
    const-string v15, "href"

    invoke-virtual {v14, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v15, "si_id"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v15, "content"

    invoke-virtual {v14, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v15, "charset"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 170
    const-string v15, "si_expires"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 171
    .local v7, expiration:Ljava/lang/Long;
    if-eqz v7, :cond_2

    .line 172
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    cmp-long v15, v17, v19

    if-gtz v15, :cond_2

    .line 173
    const-string v15, "PushUtil"

    const-string v17, "Discard one expired SI"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v7           #expiration:Ljava/lang/Long;
    .end local v9           #href:Ljava/lang/String;
    .end local v12           #si_id:Ljava/lang/String;
    .restart local v8       #href:Ljava/lang/String;
    .restart local v11       #si_id:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 157
    .end local v5           #content:Ljava/lang/String;
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v15, "PushUtil"

    const-string v17, "Unsupport charset, while parse received SI!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #href:Ljava/lang/String;
    .end local v11           #si_id:Ljava/lang/String;
    .restart local v5       #content:Ljava/lang/String;
    .restart local v7       #expiration:Ljava/lang/Long;
    .restart local v9       #href:Ljava/lang/String;
    .restart local v12       #si_id:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/push/PushUtil;->processOutOfOrderDelivery(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 179
    const-string v15, "PushUtil"

    const-string v17, "Discard received SI"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_3
    const-string v15, "action"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, action:I
    const/16 v15, 0x9

    if-ne v1, v15, :cond_4

    .line 185
    const-string v15, "PushUtil"

    const-string v17, "Received SI has action-delete"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    :cond_4
    const/4 v15, 0x5

    if-ne v1, v15, :cond_5

    .line 193
    :cond_5
    const-string v15, "isRead"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v15, "receivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v15, "phoneNumber"

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v17, Lcom/android/mms/push/SiMessage;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 202
    .local v13, uri:Landroid/net/Uri;
    move-object v10, v5

    .line 203
    .local v10, message:Ljava/lang/String;
    if-nez v10, :cond_6

    .line 204
    move-object v10, v9

    .line 207
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v10, v13}, Lcom/android/mms/push/PushUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 156
    .end local v1           #action:I
    .end local v7           #expiration:Ljava/lang/Long;
    .end local v10           #message:Ljava/lang/String;
    .end local v12           #si_id:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    .restart local v11       #si_id:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9           #href:Ljava/lang/String;
    .restart local v8       #href:Ljava/lang/String;
    goto :goto_1

    .end local v5           #content:Ljava/lang/String;
    .end local v8           #href:Ljava/lang/String;
    .end local v11           #si_id:Ljava/lang/String;
    .restart local v9       #href:Ljava/lang/String;
    .restart local v12       #si_id:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v11, v12

    .end local v12           #si_id:Ljava/lang/String;
    .restart local v11       #si_id:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #href:Ljava/lang/String;
    .restart local v8       #href:Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized processSl(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 15
    .parameter "context"
    .parameter "slWbxmlContent"
    .parameter "phoneNumber"

    .prologue
    .line 274
    const-class v12, Lcom/android/mms/push/PushUtil;

    monitor-enter v12

    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v10, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    array-length v11, v0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v10}, Lcom/android/mms/push/PushUtil;->nativeParseSl([BILandroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 277
    const-string v11, "PushUtil"

    const-string v13, "Fail to parse received SL!"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    monitor-exit v12

    return-void

    .line 281
    :cond_0
    :try_start_1
    invoke-static {p0, v10}, Lcom/android/mms/push/PushUtil;->removeDuplicateSl(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 282
    const-string v11, "PushUtil"

    const-string v13, "Discard received SL!"

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 286
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    const-string v11, "charset"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 287
    .local v1, charset:J
    long-to-int v11, v1

    invoke-static {v11}, Lcom/android/mms/push/PushUtil;->getCharset(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, charsetString:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 289
    const-string v11, "PushUtil"

    const-string v13, "Unsupport charset, while parse received SL!"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 293
    :cond_2
    const/4 v6, 0x0

    .line 294
    .local v6, href:Ljava/lang/String;
    const/4 v4, 0x0

    .line 296
    .local v4, content:Ljava/lang/String;
    :try_start_3
    new-instance v7, Ljava/lang/String;

    const-string v11, "href"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v7, v11, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 297
    .end local v6           #href:Ljava/lang/String;
    .local v7, href:Ljava/lang/String;
    :try_start_4
    new-instance v4, Ljava/lang/String;

    .end local v4           #content:Ljava/lang/String;
    const-string v11, "content"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v4, v11, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 303
    .restart local v4       #content:Ljava/lang/String;
    :try_start_5
    const-string v11, "href"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v11, "content"

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v11, "charset"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 307
    const-string v11, "isRead"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v11, "receivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    const-string v11, "phoneNumber"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/android/mms/push/SlMessage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 314
    .local v9, uri:Landroid/net/Uri;
    move-object v8, v4

    .line 315
    .local v8, message:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 316
    move-object v8, v7

    .line 319
    :cond_3
    invoke-static {p0, v8, v9}, Lcom/android/mms/push/PushUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 298
    .end local v7           #href:Ljava/lang/String;
    .end local v8           #message:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v6       #href:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 299
    .end local v4           #content:Ljava/lang/String;
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v11, "PushUtil"

    const-string v13, "Unsupport charset, while parse received SL!"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 298
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    .end local v6           #href:Ljava/lang/String;
    .restart local v7       #href:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7           #href:Ljava/lang/String;
    .restart local v6       #href:Ljava/lang/String;
    goto :goto_1
.end method

.method private static removeDuplicateSl(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 334
    sget-object v0, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    const-string v1, "href"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/SlMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/push/PushUtil;->SL_PROJECTION:[Ljava/lang/String;

    const-string v3, "href = ?"

    sget-object v4, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 338
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 341
    .local v7, actionOfOldSl:I
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 344
    .local v6, actionOfNewSl:I
    sget-object v0, Lcom/android/mms/push/PushUtil;->SL_PRI_TABLE:[[Z

    add-int/lit8 v1, v7, -0x5

    aget-object v0, v0, v1

    add-int/lit8 v1, v6, -0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 345
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 346
    const/4 v0, 0x1

    .line 353
    .end local v6           #actionOfNewSl:I
    .end local v7           #actionOfOldSl:I
    :goto_0
    return v0

    .line 348
    .restart local v6       #actionOfNewSl:I
    .restart local v7       #actionOfOldSl:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/push/SlMessage;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "href = ?"

    sget-object v3, Lcom/android/mms/push/PushUtil;->sSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    .end local v6           #actionOfNewSl:I
    .end local v7           #actionOfOldSl:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 353
    goto :goto_0
.end method

.method private static resolveRelativeURI(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "values"

    .prologue
    .line 398
    const-string v8, "ContentUri"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, contentURI:Ljava/lang/String;
    const-string v8, "ContentLocation"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, contentLocation:Ljava/lang/String;
    const/4 v0, 0x0

    .line 402
    .local v0, baseURI:Ljava/net/URI;
    const/4 v1, 0x0

    .line 403
    .local v1, baseURIStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 404
    .local v7, reference:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 405
    move-object v1, v3

    .line 406
    move-object v7, v2

    .line 414
    :goto_0
    if-nez v1, :cond_3

    .line 437
    :cond_0
    :goto_1
    return-void

    .line 407
    :cond_1
    if-eqz v3, :cond_2

    .line 408
    move-object v1, v3

    goto :goto_0

    .line 410
    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 418
    :cond_3
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v7}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 424
    const-string v8, "InvalidateObjectUri"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, invalidateObject:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 427
    const-string v8, "InvalidateObjectUri"

    invoke-static {v0, v5}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_4
    const-string v8, "InvalidateServiceUri"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, invalidateService:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 434
    const-string v8, "InvalidateServiceUri"

    invoke-static {v0, v6}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    .end local v5           #invalidateObject:Ljava/lang/String;
    .end local v6           #invalidateService:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 420
    .local v4, e:Ljava/net/URISyntaxException;
    const-string v8, "PushUtil"

    const-string v9, "Resolve relative URI"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static showNotification(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 13
    .parameter "context"
    .parameter "message"
    .parameter "uri"

    .prologue
    .line 440
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 441
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_enable_received_notifications"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 442
    .local v1, enable:Z
    if-nez v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 445
    :cond_0
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 448
    .local v3, nm:Landroid/app/NotificationManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0901d2

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 450
    .local v8, tickerText:Ljava/lang/String;
    new-instance v4, Landroid/app/Notification;

    const v10, 0x7f020158

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v4, v10, v8, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 454
    .local v4, notif:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/push/PushMessagesActivity;

    invoke-direct {v2, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/4 v10, 0x0

    const/high16 v11, 0x1000

    invoke-static {p0, v10, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 460
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v10, 0x7f0901c6

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, p0, v10, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 464
    const-string v10, "pref_key_play_received_notifications"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 465
    .local v6, sound:Z
    if-eqz v6, :cond_1

    .line 466
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, ringtoneStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    iput-object v10, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 469
    .end local v5           #ringtoneStr:Ljava/lang/String;
    :cond_1
    const-string v10, "pref_key_vibrate_received_notifications"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 470
    .local v9, vibrate:Z
    if-eqz v9, :cond_2

    .line 471
    iget v10, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 475
    :cond_2
    const v10, 0x7f0901d2

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 467
    .end local v9           #vibrate:Z
    .restart local v5       #ringtoneStr:Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1
.end method
