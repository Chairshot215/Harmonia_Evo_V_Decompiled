.class public final Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;
.super Ljava/lang/Object;
.source "HtcWraphtcCheckin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$IntentAction;,
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Message;,
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Crashes;,
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Properties;,
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats;,
        Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.server.htcCheckin"

.field private static final LOCAL_LOGV:Z = false

.field private static final MIN_CRASH_FAILURE_RETRY:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "htcCheckin"

.field private static bCHECKIN:Z

.field private static bCRASHREPO:Z

.field private static bFOTA:Z

.field private static bFotaDownloadVibile:Z

.field private static bGOOGLE_CHECKIN:Z

.field private static bGOOGLE_FOTA:Z

.field private static volatile sLastCrashFailureRealtime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCHECKIN:Z

    .line 49
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bFOTA:Z

    .line 51
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCRASHREPO:Z

    .line 53
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bFotaDownloadVibile:Z

    .line 57
    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bGOOGLE_CHECKIN:Z

    .line 59
    sput-boolean v1, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bGOOGLE_FOTA:Z

    .line 323
    const-wide/16 v0, -0x2710

    sput-wide v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->sLastCrashFailureRealtime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method public static isEnableCheckin()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCHECKIN:Z

    return v0
.end method

.method public static isEnableFOTA()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bFOTA:Z

    return v0
.end method

.method public static isEnableReport()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCRASHREPO:Z

    return v0
.end method

.method public static logEvent(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static logEvent(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 251
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz p2, :cond_0

    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 260
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t log event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t log event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reportCrash(Landroid/content/ContentResolver;Lcom/htc/wrap/android/server/data/HtcWrapCrashData;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "crash"

    .prologue
    const/4 v2, 0x0

    .line 374
    sget-boolean v3, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCRASHREPO:Z

    if-nez v3, :cond_0

    .line 375
    const-string v3, "htcCheckin"

    const-string v4, "Ignore save crash"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-object v2

    .line 379
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 380
    .local v0, data:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v3}, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->write(Ljava/io/DataOutput;)V

    .line 381
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 382
    .end local v0           #data:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 384
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing crash: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "crash"

    .prologue
    const/4 v6, 0x0

    .line 333
    sget-boolean v7, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCRASHREPO:Z

    if-nez v7, :cond_1

    move-object v4, v6

    .line 362
    :cond_0
    :goto_0
    return-object v4

    .line 342
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 343
    .local v1, realtime:J
    sget-wide v7, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->sLastCrashFailureRealtime:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x2710

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 344
    const-string v7, "htcCheckin"

    const-string v8, "Crash logging skipped, too soon after logging failure"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 345
    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 350
    .local v0, encoded:[B
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "data"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 353
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 354
    const-string v7, "htcCheckin"

    const-string v8, "Error reporting crash"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sput-wide v7, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->sLastCrashFailureRealtime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v0           #encoded:[B
    .end local v1           #realtime:J
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 360
    .local v3, t:Ljava/lang/Throwable;
    const-string v7, "htcCheckin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reporting crash: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sput-wide v7, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->sLastCrashFailureRealtime:J

    move-object v4, v6

    .line 362
    goto :goto_0
.end method

.method public static saveMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "link"
    .parameter "version"
    .parameter "feature"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 304
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    const-string v3, "link"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    if-eqz p2, :cond_1

    const-string v3, "version"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    if-eqz p3, :cond_2

    const-string v3, "feature"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    if-eqz p4, :cond_3

    const-string v3, "size"

    invoke-virtual {v1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_3
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 315
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t save message / version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t save message / version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setReport(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 74
    sput-boolean p0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->bCRASHREPO:Z

    .line 75
    return-void
.end method

.method public static updateStats(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats$Tag;ID)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->updateStats(Landroid/content/ContentResolver;Ljava/lang/String;ID)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateStats(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;ID)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;->updateStats(Landroid/content/ContentResolver;Ljava/lang/String;ID)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static updateStats(Landroid/content/ContentResolver;Ljava/lang/String;ID)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    const/4 v2, 0x0

    .line 286
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-eqz p2, :cond_0

    const-string v3, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double v3, p3, v3

    if-eqz v3, :cond_1

    const-string v3, "sum"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 290
    :cond_1
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 296
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "htcCheckin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
