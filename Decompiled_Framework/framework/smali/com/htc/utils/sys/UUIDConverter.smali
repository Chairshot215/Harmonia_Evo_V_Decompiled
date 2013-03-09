.class Lcom/htc/utils/sys/UUIDConverter;
.super Ljava/lang/Object;
.source "UUIDConverter.java"


# static fields
.field public static final EMPTY_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/htc/utils/sys/UUIDConverter;->EMPTY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToUUID([B)Ljava/util/UUID;
    .locals 10

    const/16 v9, 0x8

    if-eqz p0, :cond_0

    array-length v5, p0

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_5

    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    :cond_2
    :goto_2
    shl-long v5, v1, v9

    add-int/lit8 v7, v0, 0x8

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v1, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    if-ge v0, v5, :cond_4

    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0x9

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    goto :goto_2

    :cond_4
    if-ge v0, v9, :cond_2

    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0xd

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method public static createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v5, "%s.%s.%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/htc/utils/sys/UUIDConverter;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v4

    return-object v4
.end method

.method public static toUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/utils/sys/UUIDConverter;->EMPTY_UUID:Ljava/util/UUID;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;)[B
    .locals 9

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    const/16 v6, 0x10

    new-array v0, v6, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    rsub-int/lit8 v6, v1, 0x3

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    :goto_1
    add-int/lit8 v6, v1, 0x8

    rsub-int/lit8 v7, v1, 0xf

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x6

    if-ge v1, v6, :cond_3

    rsub-int/lit8 v6, v1, 0x9

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_1

    :cond_3
    rsub-int/lit8 v6, v1, 0xd

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_1
.end method
