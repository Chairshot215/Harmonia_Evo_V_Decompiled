.class public Lcom/discretix/drm/api/FileDataReader;
.super Lcom/discretix/drm/api/IDxDataReader;
.source "FileDataReader.java"


# instance fields
.field private mFileStream:Ljava/io/FileInputStream;

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

.field private mSourceFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/discretix/drm/api/IDxDataReader;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/FileDataReader;->mSourceFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/FileDataReader;->close()V

    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/FileDataReader;->mHeaders:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v15, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const-wide/16 v12, 0x0

    const/16 v1, 0x400

    new-array v2, v1, [B

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [J

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v6, v1

    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mSourceFileName:Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/discretix/drm/api/FileDataReader;->mSourceFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    if-nez v1, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v1, 0x202

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    int-to-long v3, v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/discretix/drm/api/IDxDrmCoreClient;->DetectMimeType([BJLjava/lang/StringBuffer;[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v15

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v15, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v15}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :catch_0
    move-exception v10

    const-string v1, "DxDrm"

    const-string v3, "Cannot open file"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :catch_1
    move-exception v10

    const-string v1, "DxDrm"

    const-string v3, "Cannot read from file"

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/discretix/drm/api/FileDataReader;->mSourceFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    const/4 v1, 0x0

    aget-wide v3, v6, v1

    long-to-int v1, v3

    new-array v14, v1, [B

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mFileStream:Ljava/io/FileInputStream;

    invoke-virtual {v1, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    int-to-long v3, v7

    const/4 v1, 0x0

    aget-wide v16, v6, v1

    cmp-long v1, v3, v16

    if-eqz v1, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_ACCESS_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v1, v3}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    aget-wide v3, v6, v1

    sub-long v8, v12, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mHeaders:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Length"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/discretix/drm/api/FileDataReader;->mHeaders:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/discretix/drm/api/FileDataReader;->mMimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
