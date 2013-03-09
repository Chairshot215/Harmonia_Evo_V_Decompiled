.class public final Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    if-gez v1, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .locals 4

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    :cond_0
    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    goto :goto_0
.end method

.method public static getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .locals 4

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    :cond_0
    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, ""

    goto :goto_0
.end method

.method public static readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-direct {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_0
    return-object v1
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
