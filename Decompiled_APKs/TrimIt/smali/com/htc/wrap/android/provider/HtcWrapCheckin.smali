.class public final Lcom/htc/wrap/android/provider/HtcWrapCheckin;
.super Ljava/lang/Object;
.source "HtcWrapCheckin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapCheckin$TriggerIntent;,
        Lcom/htc/wrap/android/provider/HtcWrapCheckin$Crashes;,
        Lcom/htc/wrap/android/provider/HtcWrapCheckin$Properties;,
        Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats;,
        Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "android.server.checkin"

.field private static final MIN_CRASH_FAILURE_RETRY:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Checkin"

.field private static volatile sLastCrashFailureRealtime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 273
    const-wide/16 v0, -0x2710

    sput-wide v0, Lcom/htc/wrap/android/provider/HtcWrapCheckin;->sLastCrashFailureRealtime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static logEvent(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 230
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events$Tag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p2, :cond_0

    const-string v3, "value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 239
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Checkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t log event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 237
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "Checkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t log event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reportCrash(Landroid/content/ContentResolver;Lcom/htc/wrap/android/server/data/HtcWrapCrashData;)Landroid/net/Uri;
    .locals 5
    .parameter "resolver"
    .parameter "crash"

    .prologue
    .line 320
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v0, data:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Lcom/htc/wrap/android/server/data/HtcWrapCrashData;->write(Ljava/io/DataOutput;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/wrap/android/provider/HtcWrapCheckin;->reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 326
    .end local v0           #data:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v1

    .line 325
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "Checkin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing crash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static reportCrash(Landroid/content/ContentResolver;[B)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "crash"

    .prologue
    const/4 v6, 0x0

    .line 287
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 288
    .local v1, realtime:J
    sget-wide v7, Lcom/htc/wrap/android/provider/HtcWrapCheckin;->sLastCrashFailureRealtime:J

    sub-long v7, v1, v7

    const-wide/16 v9, 0x2710

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 289
    const-string v7, "Checkin"

    const-string v8, "Crash logging skipped, too soon after logging failure"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 307
    .end local v1           #realtime:J
    :cond_0
    :goto_0
    return-object v4

    .line 294
    .restart local v1       #realtime:J
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 295
    .local v0, encoded:[B
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "data"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v7, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 298
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 299
    const-string v7, "Checkin"

    const-string v8, "Error reporting crash"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sput-wide v7, Lcom/htc/wrap/android/provider/HtcWrapCheckin;->sLastCrashFailureRealtime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v0           #encoded:[B
    .end local v1           #realtime:J
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 305
    .local v3, t:Ljava/lang/Throwable;
    const-string v7, "Checkin"

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

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sput-wide v7, Lcom/htc/wrap/android/provider/HtcWrapCheckin;->sLastCrashFailureRealtime:J

    move-object v4, v6

    .line 307
    goto :goto_0
.end method

.method public static updateStats(Landroid/content/ContentResolver;Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats$Tag;ID)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "tag"
    .parameter "count"
    .parameter "sum"

    .prologue
    const/4 v2, 0x0

    .line 255
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-virtual {p1}, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats$Tag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz p2, :cond_0

    const-string v3, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    :cond_0
    const-wide/16 v3, 0x0

    cmpl-double v3, p3, v3

    if-eqz v3, :cond_1

    const-string v3, "sum"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 259
    :cond_1
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 265
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Checkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 263
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "Checkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update stat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
