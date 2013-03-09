.class final Lcom/htc/reportagent/cache/LogCacheUtil;
.super Ljava/lang/Object;
.source "LogCacheUtil.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/reportagent/cache/LogCacheUtil;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tag"

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/reportagent/cache/LogCacheUtil;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getCacheLimitFromPolicy()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x400

    .line 50
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v4

    .line 51
    .local v4, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v5, "log"

    const-string v6, "cache"

    invoke-virtual {v4, v5, v6}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, cacheSizeStr:Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 53
    .local v0, cacheSize:J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 61
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    mul-long v5, v0, v7

    mul-long v0, v5, v7

    .line 62
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 63
    return-wide v0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 58
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static toHexString(J)Ljava/lang/String;
    .locals 5
    .parameter "v"

    .prologue
    .line 38
    const/16 v1, 0x10

    .line 39
    .local v1, bufLen:I
    new-array v0, v1, [C

    .line 41
    .local v0, buf:[C
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 42
    sget-object v3, Lcom/htc/reportagent/cache/LogCacheUtil;->DIGITS:[C

    long-to-int v4, p0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 43
    const/4 v3, 0x4

    ushr-long/2addr p0, v3

    .line 41
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
