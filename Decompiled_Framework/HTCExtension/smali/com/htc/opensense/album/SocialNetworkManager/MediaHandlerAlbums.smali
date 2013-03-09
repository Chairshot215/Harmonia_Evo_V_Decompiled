.class public Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaInfo;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlbumCount:I

.field private mAlbumRequestTotal:I

.field private mAsyncReqInfo:Landroid/os/AsyncTask;

.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqRecentList:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

.field private mIsEnablePhotosOfMe:Z

.field private mIsEnableRecentPhotos:Z

.field private mIsEnableRecentVideos:Z

.field private mIsForceLiveUpdate:Z

.field mMediaOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation
.end field

.field mMediaSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation
.end field

.field mMediaUIDs:[Ljava/lang/String;

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field mMediaWrappersTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field mRecentPOMWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field mRecentVWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field mRecentWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaUIDs:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaOps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z

    iput v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentVideoListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I

    return v0
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEALBUMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEALBUMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEALBUMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private putRecentListToFileCache(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private putRecentVideoListToFileCache(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelBackgroundAction()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    return-void
.end method

.method public enablePhotoOfMe()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][enablePhotoOfMe]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableRecentPhotoList()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][enableRecentPhotoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableRecentVideoList()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][enableRecentVideoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMediaInfo([Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaUIDs:[Ljava/lang/String;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqInfo:Landroid/os/AsyncTask;

    return v4
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][getMediaList]: "

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lcom/htc/opensense/social/data/Person;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    new-instance v4, Lcom/htc/opensense/social/data/Person;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I

    iput v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v4}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v3, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;

    invoke-direct {v3, p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    return v7
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaNextOnList(Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][getMediaNextOnList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqList:Landroid/os/AsyncTask;

    return v4
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Album;

    check-cast p1, [Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getAlbumOps([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediaRecentList(Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][getMediaRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAsyncReqRecentList:Landroid/os/AsyncTask;

    return v4
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->setUIHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->cancelBackgroundAction()V

    return-void
.end method
