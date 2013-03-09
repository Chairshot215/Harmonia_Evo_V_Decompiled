.class public Lcom/htc/reportagent/util/UUIDConverter;
.super Ljava/lang/Object;
.source "UUIDConverter.java"


# static fields
.field public static final EMPTY_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/htc/reportagent/util/UUIDConverter;->EMPTY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToUUID([B)Ljava/util/UUID;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x8

    .line 82
    if-eqz p0, :cond_0

    array-length v5, p0

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    .line 83
    :cond_0
    const/4 v5, 0x0

    .line 98
    :goto_0
    return-object v5

    .line 85
    :cond_1
    const-wide/16 v1, 0x0

    .line 86
    .local v1, lower:J
    const-wide/16 v3, 0x0

    .line 88
    .local v3, upper:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_5

    .line 89
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    .line 90
    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    .line 95
    :cond_2
    :goto_2
    shl-long v5, v1, v9

    add-int/lit8 v7, v0, 0x8

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v1, v5, v7

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_3
    const/4 v5, 0x6

    if-ge v0, v5, :cond_4

    .line 92
    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0x9

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    goto :goto_2

    .line 93
    :cond_4
    if-ge v0, v9, :cond_2

    .line 94
    shl-long v5, v3, v9

    rsub-int/lit8 v7, v0, 0xd

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    goto :goto_2

    .line 98
    :cond_5
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method public static byteStringToUUID(Lcom/htc/protobuf/ByteString;)Ljava/util/UUID;
    .locals 1
    .parameter "id"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/reportagent/util/UUIDConverter;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 8
    .parameter "serialNumber"
    .parameter "imei"
    .parameter "meid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 121
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

    .line 122
    .local v2, input:Ljava/lang/String;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 123
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 124
    .local v0, data:[B
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 126
    .local v1, hashedBytes:[B
    invoke-static {v1}, Lcom/htc/reportagent/util/UUIDConverter;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v4

    .line 127
    .local v4, uuid:Ljava/util/UUID;
    return-object v4
.end method

.method public static toUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2
    .parameter "id"

    .prologue
    .line 45
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/reportagent/util/UUIDConverter;->EMPTY_UUID:Ljava/util/UUID;

    .line 46
    .local v0, rmSeqId:Ljava/util/UUID;
    :goto_0
    return-object v0

    .line 45
    .end local v0           #rmSeqId:Ljava/util/UUID;
    :cond_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;)[B
    .locals 9
    .parameter "id"

    .prologue
    .line 55
    if-nez p0, :cond_1

    .line 56
    const/4 v0, 0x0

    .line 73
    :cond_0
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 59
    .local v2, lower:J
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 60
    .local v4, upper:J
    const/16 v6, 0x10

    new-array v0, v6, [B

    .line 62
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 63
    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    .line 64
    rsub-int/lit8 v6, v1, 0x3

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 70
    :goto_1
    add-int/lit8 v6, v1, 0x8

    rsub-int/lit8 v7, v1, 0xf

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    const/4 v6, 0x6

    if-ge v1, v6, :cond_3

    .line 66
    rsub-int/lit8 v6, v1, 0x9

    rsub-int/lit8 v7, v1, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v4, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    goto :goto_1

    .line 68
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

.method public static uuidToByteString(Ljava/util/UUID;)Lcom/htc/protobuf/ByteString;
    .locals 1
    .parameter "id"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/htc/reportagent/util/UUIDConverter;->uuidToByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/ByteString;->copyFrom([B)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
