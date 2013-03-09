.class public Lcom/google/android/location/data/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field private static final BROADCAST_MAC_PATTERN:Ljava/util/regex/Pattern;

.field private static final CORRECT_MAC_GROUPED_PATTERN:Ljava/util/regex/Pattern;

.field private static final CORRECT_MAC_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "^[fF]{2}(?:[:-][fF]{2}){5}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/data/WifiUtils;->BROADCAST_MAC_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "^[0-9a-fA-F]{2}(?:[:-][0-9a-fA-F]{2}){5}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/data/WifiUtils;->CORRECT_MAC_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "^([0-9a-fA-F]{2})[:-]([0-9a-fA-F]{2})[:-]([0-9a-fA-F]{2})[:-]([0-9a-fA-F]{2})[:-]([0-9a-fA-F]{2})[:-]([0-9a-fA-F]{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/data/WifiUtils;->CORRECT_MAC_GROUPED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static macToLong(Ljava/lang/String;)J
    .locals 3
    .parameter "mac"

    .prologue
    .line 145
    const-string v1, "-|:"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 147
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 149
    :goto_0
    return-wide v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static macValueToHexString(J)Ljava/lang/String;
    .locals 7
    .parameter "macValue"

    .prologue
    const-wide/16 v5, 0xff

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffffffL

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%02X-%02X-%02X-%02X-%02X-%02X"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x28

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    and-long v3, p0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
