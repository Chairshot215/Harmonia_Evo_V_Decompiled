.class public Lcom/discretix/drm/api/BufferDataReader;
.super Lcom/discretix/drm/api/IDxDataReader;
.source "BufferDataReader.java"


# instance fields
.field private mData:[B

.field private mDataSize:J

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeType:Ljava/lang/String;

.field private mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>([BILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/discretix/drm/api/IDxDataReader;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/BufferDataReader;->mData:[B

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mDataSize:J

    iput-object p3, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/BufferDataReader;->close()V

    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/message/BasicHeader;

    check-cast v0, [Lorg/apache/http/message/BasicHeader;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v10, 0x0

    sget-object v9, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v5, v10

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x202

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/discretix/drm/api/BufferDataReader;->mData:[B

    iget-wide v2, p0, Lcom/discretix/drm/api/BufferDataReader;->mDataSize:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->DetectMimeType([BJLjava/lang/StringBuffer;[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v9

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v9, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v9}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    :cond_1
    iget-wide v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mDataSize:J

    aget-wide v2, v5, v10

    sub-long v6, v0, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mHeaders:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mHeaders:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Length"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mHeaders:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    iget-object v3, p0, Lcom/discretix/drm/api/BufferDataReader;->mMimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    const/4 v8, 0x0

    :goto_0
    array-length v0, p2

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mHeaders:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    aget-object v2, p2, v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/discretix/drm/api/BufferDataReader;->mData:[B

    aget-wide v2, v5, v10

    long-to-int v2, v2

    iget-object v3, p0, Lcom/discretix/drm/api/BufferDataReader;->mData:[B

    array-length v3, v3

    aget-wide v10, v5, v10

    long-to-int v10, v10

    sub-int/2addr v3, v10

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iput-object v0, p0, Lcom/discretix/drm/api/BufferDataReader;->mStream:Ljava/io/InputStream;

    return-void
.end method
