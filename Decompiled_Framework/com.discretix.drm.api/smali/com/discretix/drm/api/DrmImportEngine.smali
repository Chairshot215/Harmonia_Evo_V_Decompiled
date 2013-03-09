.class public Lcom/discretix/drm/api/DrmImportEngine;
.super Ljava/lang/Object;
.source "DrmImportEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/DrmImportEngine$1;,
        Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;,
        Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DX_DEFAULT_SECS_TO_RIGHTS_ARRIVAL:I = 0x19

.field private static final OMA_SD_HEADER_STR:Ljava/lang/String; = "X-Oma-Drm-Separate-Delivery"

.field private static final TAG:Ljava/lang/String; = "DrmImportEngine"

.field public static final lock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private mActiveRO:Lcom/discretix/drm/api/DxRightsObject;

.field private mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

.field private mDataReader:Lcom/discretix/drm/api/IDxDataReader;

.field private mDestFileName:Ljava/lang/String;

.field private mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

.field private mHttpPass:Ljava/lang/String;

.field private mHttpUser:Ljava/lang/String;

.field private mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

.field private mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

.field private mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

.field private mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

.field private mImportStreamArray:[Lcom/discretix/drm/api/IDxCoreImportStream;

.field private mInputStream:Ljava/io/InputStream;

.field private mLastProgressUpdateTime:Ljava/util/Date;

.field private mRealm:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mSecsToRightsArrival:J

.field private mShouldDeleteImportStream:Z

.field private mSourceFile:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/discretix/drm/api/DrmImportEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/discretix/drm/api/DrmImportEngine;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/discretix/drm/api/DrmImportEngine;->lock:Ljava/util/concurrent/locks/Lock;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->init()V

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    new-instance v0, Lcom/discretix/drm/api/HttpDataReader;

    invoke-direct {v0, p1}, Lcom/discretix/drm/api/HttpDataReader;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->URL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    return-void
.end method

.method public constructor <init>(Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->init()V

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mShouldDeleteImportStream:Z

    iput-object p2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->NONE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    return-void
.end method

.method public constructor <init>(Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;Lcom/discretix/drm/api/DxRightsObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->init()V

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mShouldDeleteImportStream:Z

    iput-object p2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->NONE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object p3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mActiveRO:Lcom/discretix/drm/api/DxRightsObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->init()V

    iput-object p3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    new-instance v0, Lcom/discretix/drm/api/FileDataReader;

    invoke-direct {v0, p1, p2}, Lcom/discretix/drm/api/FileDataReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->FILE:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSourceFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->init()V

    iput-object p3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    new-instance v0, Lcom/discretix/drm/api/BufferDataReader;

    array-length v1, p1

    invoke-direct {v0, p1, v1, p2}, Lcom/discretix/drm/api/BufferDataReader;-><init>([BILjava/lang/String;)V

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->BUFFER:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    return-void
.end method

.method private addResponseHeaders()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const-wide/16 v10, 0x19

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    sget-boolean v8, Lcom/discretix/drm/api/DrmImportEngine;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "AddHeaders: data reader is null"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_0
    sget-boolean v8, Lcom/discretix/drm/api/DrmImportEngine;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "AddHeaders: import stream is null"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_1
    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v8}, Lcom/discretix/drm/api/IDxDataReader;->getHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v8, v3

    if-ge v4, v8, :cond_6

    aget-object v8, v3, v4

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v8, v3, v4

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v8, "X-Oma-Drm-Separate-Delivery"

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "MaxSecsToRightsArrival"

    invoke-static {v8, v10, v11}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    const-string v8, "DefaultSecsToRightsArrival"

    invoke-static {v8, v10, v11}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    :goto_1
    iget-wide v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    cmp-long v8, v8, v5

    if-lez v8, :cond_3

    iput-wide v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    :cond_3
    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v8, v1, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->AddHTTPHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v7

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v7, v8, :cond_5

    new-instance v8, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v8, v7}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v8

    :cond_4
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "DrmImport"

    const-string v9, "Could not parse X-Oma-Drm-Separate-Delivery header value"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v8, "DefaultSecsToRightsArrival"

    invoke-static {v8, v10, v11}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private createImportStream()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    sget-boolean v3, Lcom/discretix/drm/api/DrmImportEngine;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "CreateImportStream: data reader is null"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_0
    new-array v0, v8, [Lcom/discretix/drm/api/IDxDrmCoreClient;

    aput-object v9, v0, v7

    invoke-static {v0}, Lcom/discretix/drm/api/DxDrmCore;->DxDrmCoreClient_Get([Lcom/discretix/drm/api/IDxDrmCoreClient;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_1

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v3, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_1
    aget-object v3, v0, v7

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    iget-object v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRequestHeaders:Ljava/util/ArrayList;

    new-array v6, v7, [Lorg/apache/http/Header;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/http/Header;

    check-cast v3, [Lorg/apache/http/Header;

    invoke-virtual {v4, v5, v3}, Lcom/discretix/drm/api/IDxDataReader;->init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V

    new-array v3, v8, [Lcom/discretix/drm/api/IDxCoreImportStream;

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStreamArray:[Lcom/discretix/drm/api/IDxCoreImportStream;

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStreamArray:[Lcom/discretix/drm/api/IDxCoreImportStream;

    aput-object v9, v3, v7

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v3}, Lcom/discretix/drm/api/IDxDataReader;->getHttpResult()I

    move-result v1

    const/16 v3, 0x191

    if-ne v1, v3, :cond_2

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxDataReader;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v5}, Lcom/discretix/drm/api/IDxDataReader;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_3

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v3, v4}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDrmClient:Lcom/discretix/drm/api/IDxDrmCoreClient;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStreamArray:[Lcom/discretix/drm/api/IDxCoreImportStream;

    iget-object v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v5}, Lcom/discretix/drm/api/IDxDataReader;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/discretix/drm/api/IDxDrmCoreClient;->CreateImportStream([Lcom/discretix/drm/api/IDxCoreImportStream;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mShouldDeleteImportStream:Z

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStreamArray:[Lcom/discretix/drm/api/IDxCoreImportStream;

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_4

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v3, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_4
    sget-object v3, Lcom/discretix/drm/api/DrmImportEngine$1;->$SwitchMap$com$discretix$drm$api$DrmImportEngine$DrmImportSource:[I

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportSource:Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;

    invoke-virtual {v4}, Lcom/discretix/drm/api/DrmImportEngine$DrmImportSource;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/IDxCoreImportStream;->SetDestinationFile(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_5

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v3, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :pswitch_0
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    const-string v4, "SourceFileName"

    iget-object v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSourceFile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->SetDataItem(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    const-string v4, "SourceUrl"

    iget-object v5, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->SetDataItem(Ljava/lang/String;Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private endCurrentPhase()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v2, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v1}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v2, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResultEx(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v2, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getProgress()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/discretix/drm/api/IDrmImportListener;->onDownloadEnd(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v2, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResultEx(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v2, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v1}, Lcom/discretix/drm/api/IDrmImportListener;->onPostProcessEnd()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v1, :cond_2

    iput-boolean v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v2, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v1, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResultEx(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0
.end method

.method private getSuggestedDestFileName()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v7, v9

    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetExpectedSize()J

    move-result-wide v4

    long-to-int v8, v4

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    const-string v5, "SuggestedFileName"

    invoke-virtual {v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v5, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CLASSIFICATION_INFO:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v5, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v5, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_FILE_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v4, v5}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v8, v4, :cond_1

    int-to-long v4, v8

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/discretix/drm/api/DxFileNameUtils;->generateSaveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v4, "DrmImportEngine"

    const-string v5, "Exception happened"

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v4, "DrmImportEngine"

    const-string v5, "Exception happened"

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    goto :goto_0
.end method

.method private handleHttpRequestAvailable()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    new-array v3, v10, [Lcom/discretix/drm/api/IDxHttpRequest;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v6, v3}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetHTTPRequest([Lcom/discretix/drm/api/IDxHttpRequest;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_0

    move-object v6, v5

    :goto_0
    return-object v6

    :cond_0
    new-instance v0, Lcom/discretix/drm/api/HttpDataReader;

    aget-object v7, v3, v9

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRequestHeaders:Ljava/util/ArrayList;

    new-array v8, v9, [Lorg/apache/http/Header;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/http/Header;

    check-cast v6, [Lorg/apache/http/Header;

    invoke-direct {v0, v7, v6}, Lcom/discretix/drm/api/HttpDataReader;-><init>(Lcom/discretix/drm/api/IDxHttpRequest;[Lorg/apache/http/Header;)V

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpPass:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpUser:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRealm:Ljava/lang/String;

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpUser:Ljava/lang/String;

    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpPass:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Lcom/discretix/drm/api/HttpDataReader;->setHttpCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRequestHeaders:Ljava/util/ArrayList;

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/http/Header;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/http/Header;

    check-cast v6, [Lorg/apache/http/Header;

    invoke-virtual {v0, v7, v6}, Lcom/discretix/drm/api/HttpDataReader;->init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V

    invoke-virtual {v0}, Lcom/discretix/drm/api/HttpDataReader;->getHttpResult()I

    move-result v4

    const/16 v6, 0x191

    if-ne v4, v6, :cond_6

    new-instance v6, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;

    invoke-virtual {v0}, Lcom/discretix/drm/api/HttpDataReader;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/discretix/drm/api/HttpDataReader;->getRealm()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;->getResult()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

    invoke-virtual {v6}, Lcom/discretix/drm/api/DrmImportThread;->getShouldClose()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CANNOT_CONNECT_TO_SERVER:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_CANNOT_CONNECT_TO_SERVER:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v6, v7}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleError(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_6

    move-object v6, v5

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_INTERNET_CONNECTION:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_INTERNET_CONNECTION:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v6, v7}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleError(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_6

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_TIMEOUT_EXPIRED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_TIMEOUT_EXPIRED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v6, v7}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleError(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_6

    move-object v6, v5

    goto/16 :goto_0

    :cond_5
    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_6

    move-object v6, v5

    goto/16 :goto_0

    :cond_6
    new-array v2, v10, [Z

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8, v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleHTTPResult(J[Z)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_7

    move-object v6, v5

    goto/16 :goto_0

    :cond_7
    aget-boolean v6, v2, v9

    if-ne v6, v10, :cond_8

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    goto/16 :goto_0

    :cond_8
    iput-object v11, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v6}, Lcom/discretix/drm/api/IDxDataReader;->close()V

    :cond_9
    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->addResponseHeaders()V

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->addData()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_a

    move-object v6, v5

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->updateProgress()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_b

    new-instance v6, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v6, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v6

    :cond_b
    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v6}, Lcom/discretix/drm/api/IDxCoreImportStream;->Finish()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRequestHeaders:Ljava/util/ArrayList;

    sget-object v0, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mShouldDeleteImportStream:Z

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpUser:Ljava/lang/String;

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpPass:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mLastProgressUpdateTime:Ljava/util/Date;

    return-void
.end method

.method private updateProgress()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getProgress()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessStart()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/discretix/drm/api/DrmImportEngine;->mLastProgressUpdateTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessStart()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mLastProgressUpdateTime:Ljava/util/Date;

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_3

    :cond_2
    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_4
    if-lez v3, :cond_9

    if-eq v3, v4, :cond_9

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->INITIAL:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessStart()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_5

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_7

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessEnd()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_6

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onDownloadStart()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_7

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4, v3}, Lcom/discretix/drm/api/IDrmImportListener;->onDownloadUpdate(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-eq v4, v5, :cond_2

    new-instance v4, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v5, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_GENERAL_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v4, v5}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v4

    :cond_9
    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->PRE_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_b

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPreProcessEnd()Z

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_a

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onDownloadStart()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_b

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    sget-object v5, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->DOWNLOAD:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;->POST_PROCESS:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iput-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportState:Lcom/discretix/drm/api/DrmImportEngine$DrmImportState;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4, v3}, Lcom/discretix/drm/api/IDrmImportListener;->onDownloadEnd(I)Z

    move-result v4

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_c

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v4}, Lcom/discretix/drm/api/IDrmImportListener;->onPostProcessStart()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    if-nez v4, :cond_2

    iput-boolean v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mUserCanceled:Z

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {p0, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private waitForRights()V
    .locals 11

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getSecsToRightsArrival()J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/discretix/drm/api/DxDrmClient;->getDxDrmClient()Lcom/discretix/drm/api/DxDrmClient;

    move-result-object v7

    iget-object v8, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/discretix/drm/api/DxDrmClient;->openDrmContent(Ljava/lang/String;)Lcom/discretix/drm/api/DxDrmFile;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    int-to-long v7, v4

    cmp-long v7, v7, v5

    if-gez v7, :cond_0

    const-wide/16 v7, 0x10

    invoke-virtual {v0, v7, v8}, Lcom/discretix/drm/api/DxDrmFile;->getFlags(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v7, v2, v9

    if-nez v7, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-wide/16 v7, 0x3e8

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v7, "DrmImportEngine"

    const-string v8, "Exception happened"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/discretix/drm/api/DxDrmFile;->close()V

    :cond_3
    throw v7

    :catch_1
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public addData()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const/4 v7, 0x1

    new-array v0, v7, [J

    aput-wide v9, v0, v8

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v7}, Lcom/discretix/drm/api/IDxDataReader;->getDataStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    :cond_0
    const/16 v7, 0x1000

    new-array v1, v7, [B

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_2

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    :goto_0
    return-object v7

    :cond_2
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v7

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    int-to-long v8, v2

    invoke-virtual {v7, v1, v8, v9, v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->AddBuffer([BJ[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_DEST_FILE_NAME_REQUIRED:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->setDestinationFile()V

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    int-to-long v9, v2

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    long-to-int v7, v7

    sub-int v5, v2, v7

    new-array v4, v5, [B

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v1, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v5

    iget-object v7, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    int-to-long v8, v2

    invoke-virtual {v7, v4, v8, v9, v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->AddBuffer([BJ[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    :cond_3
    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v6, v7, :cond_4

    invoke-virtual {p0, v6}, Lcom/discretix/drm/api/DrmImportEngine;->handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    aget-wide v7, v0, v7

    int-to-long v9, v2

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    :cond_5
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->updateProgress()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v6, v7, :cond_1

    new-instance v7, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v7, v6}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v7, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FATAL_ERROR:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v7, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v7
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRequestHeaders:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->Cancel()Lcom/discretix/drm/api/EDxDrmStatus;

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxDataReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mShouldDeleteImportStream:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->delete()V

    iput-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->destroy()V

    return-void
.end method

.method public finish()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v1}, Lcom/discretix/drm/api/IDxCoreImportStream;->Finish()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    return-object v1
.end method

.method public getBrowserUrl()Landroid/net/Uri;
    .locals 3

    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v2}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    sget-object v1, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {v0, v1}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedSize()J
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetExpectedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOperationType()Lcom/discretix/drm/api/EDxOperationType;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetOperationType()Lcom/discretix/drm/api/EDxOperationType;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetProgress()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDataReader:Lcom/discretix/drm/api/IDxDataReader;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxDataReader;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecsToRightsArrival()J
    .locals 2

    iget-wide v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mSecsToRightsArrival:J

    return-wide v0
.end method

.method public getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMessage()Lcom/discretix/drm/api/IDxUserMessage;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->GetUserMessage()Lcom/discretix/drm/api/IDxUserMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/discretix/drm/api/DrmImportEngine;->handleResultEx(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object p1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_USER_MESSAGE_IS_AVAILABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne p1, v2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

    invoke-virtual {v2}, Lcom/discretix/drm/api/DrmImportThread;->getShouldClose()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->endCurrentPhase()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v1, v2, :cond_3

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2

    :cond_3
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->waitForRights()V

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->hasBrowserUrl()Z

    move-result v0

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->hasUserNotification()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getUserMessage()Lcom/discretix/drm/api/IDxUserMessage;

    move-result-object v3

    invoke-interface {v2, v3, v0, p1}, Lcom/discretix/drm/api/IDrmImportListener;->onUserNotification(Lcom/discretix/drm/api/IDxUserMessage;ZLcom/discretix/drm/api/EDxDrmStatus;)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getBrowserUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/discretix/drm/api/IDrmImportListener;->onWebBrowser(Landroid/net/Uri;Lcom/discretix/drm/api/EDxDrmStatus;)V

    :cond_5
    iget-object v2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v2}, Lcom/discretix/drm/api/IDrmImportListener;->onImportEnd()V

    sget-object v2, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq p1, v2, :cond_0

    new-instance v2, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v2, p1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v2
.end method

.method handleResultEx(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    const/4 v5, 0x0

    :cond_0
    :goto_0
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_USER_MESSAGE_IS_AVAILABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getUserMessage()Lcom/discretix/drm/api/IDxUserMessage;

    move-result-object v0

    const/4 v3, 0x1

    new-array v1, v3, [Lcom/discretix/drm/api/EDxUserResponse;

    sget-object v3, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_NO:Lcom/discretix/drm/api/EDxUserResponse;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    invoke-interface {v3, v0, v1}, Lcom/discretix/drm/api/IDrmImportListener;->onUserMessage(Lcom/discretix/drm/api/IDxUserMessage;[Lcom/discretix/drm/api/EDxUserResponse;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_HTTP_REQUEST_IS_AVAILABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->handleHttpRequestAvailable()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq p1, v3, :cond_0

    :cond_3
    return-object p1
.end method

.method public handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v1, p1}, Lcom/discretix/drm/api/IDxCoreImportStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    return-object v1
.end method

.method public hasBrowserUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->HasBrowserUrl()Z

    move-result v0

    return v0
.end method

.method public hasUserNotification()Z
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxCoreImportStream;->HasUserNotification()Z

    move-result v0

    return v0
.end method

.method public retryHttpRequestWithCredentials()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_HTTP_REQUEST_IS_AVAILABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {p0, v0}, Lcom/discretix/drm/api/DrmImportEngine;->handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public setCallingThread(Lcom/discretix/drm/api/DrmImportThread;)V
    .locals 0

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mCallingThread:Lcom/discretix/drm/api/DrmImportThread;

    return-void
.end method

.method public setDestinationFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Lcom/discretix/drm/api/DrmImportEngine;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->getSuggestedDestFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    sget-object v4, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_DEST_FILE_NAME_REQUIRED:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-direct {v3, v4}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    sget-object v4, Lcom/discretix/drm/api/DrmImportEngine;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/IDxCoreImportStream;->SetDestinationFile(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v2

    sget-object v3, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v2, v3, :cond_1

    new-instance v3, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v3, v2}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v3

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mDestFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    sget-object v3, Lcom/discretix/drm/api/DrmImportEngine;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "DxDrmDownloadThread"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setHttpCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpUser:Ljava/lang/String;

    iput-object p3, p0, Lcom/discretix/drm/api/DrmImportEngine;->mHttpPass:Ljava/lang/String;

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setImportListener(Lcom/discretix/drm/api/IDrmImportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportListener:Lcom/discretix/drm/api/IDrmImportListener;

    return-void
.end method

.method public start()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;,
            Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v1, p0, Lcom/discretix/drm/api/DrmImportEngine;->mImportStream:Lcom/discretix/drm/api/IDxCoreImportStream;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->createImportStream()V

    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->updateProgress()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->addResponseHeaders()V

    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->addData()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/discretix/drm/api/DrmImportEngine;->updateProgress()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/discretix/drm/api/DrmImportEngine;->finish()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v1

    goto :goto_0
.end method
