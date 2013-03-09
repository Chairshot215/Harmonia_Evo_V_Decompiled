.class public final Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProtoBuf(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static createProtoBuf(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    if-gez v0, :cond_0

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getProtoLongValueOrZero(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)J
    .locals 3

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static getProtoValueOrDefault(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)I
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, p2

    goto :goto_0
.end method

.method public static getProtoValueOrEmpty(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getProtoValueOrFalse(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static getProtoValueOrNegativeOne(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)J
    .locals 3

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getProtoValueOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getProtoValueOrZero(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSubProtoValueOrDefault(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;III)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, p3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, p3

    goto :goto_0
.end method

.method public static getSubProtoValueOrEmpty(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getSubProtoValueOrNegativeOne(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;II)J
    .locals 3

    const-wide/16 v1, -0x1

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public static readNextProtoBuf(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setType(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p2, p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    goto :goto_0
.end method

.method public static readProtoBufResponse(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
