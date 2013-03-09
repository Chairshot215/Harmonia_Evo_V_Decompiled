.class public Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqPhoto:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

.field private mIsEnableRecentVideos:Z

.field private mIsForceLiveUpdate:Z

.field mMediaOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

.field mMediaUIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

.field mMediaWrapper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentListType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceMgr"
    .parameter "szServiceName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 31
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    .line 32
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    .line 35
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaOps:Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 43
    iput-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 44
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 45
    iput-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    .line 57
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 59
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 60
    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ISSUPPORT_SOCIALNETWORK_VIDEOS:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentVideoFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentVideoListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putRecentVideoListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putListToFileCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isRecentFileCacheExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPHOTOLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRecentListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRecentVideoListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "szUID"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPHOTOLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isRecentFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isRecentVideoFileCacheExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "szUID"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPHOTOLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private putRecentListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method private putRecentVideoListToFileCache(Ljava/lang/String;)V
    .locals 4
    .parameter "szUID"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    return-void
.end method


# virtual methods
.method public cancelBackgroundAction()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public getMediaInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 125
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqPhoto:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "szUID"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    .local v8, mediumOp:Lcom/htc/opensense/social/MediumOp;
    const/4 v9, 0x0

    .line 86
    .local v9, mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v0, :cond_0

    .line 88
    new-array v1, v12, [Ljava/lang/String;

    .line 89
    .local v1, szUIDs:[Ljava/lang/String;
    aput-object p1, v1, v11

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v10

    .line 93
    .local v10, nScreenDisplay:[I
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 104
    .end local v1           #szUIDs:[Ljava/lang/String;
    .end local v10           #nScreenDisplay:[I
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 106
    :cond_1
    new-array v7, v12, [Lcom/htc/opensense/social/data/Medium;

    .line 107
    .local v7, medium:[Lcom/htc/opensense/social/data/Medium;
    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    aput-object v0, v7, v11

    .line 108
    aget-object v0, v7, v11

    iput-object p1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v9, Ljava/util/List;

    .line 111
    .end local v7           #medium:[Lcom/htc/opensense/social/data/Medium;
    .restart local v9       #mediumOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_2
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    .line 112
    .restart local v8       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    return-object v8

    .line 99
    .restart local v1       #szUIDs:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 101
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 148
    .local v0, anAlbum:Lcom/htc/opensense/social/data/Album;
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 150
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v1, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .line 152
    .end local v0           #anAlbum:Lcom/htc/opensense/social/data/Album;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 156
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 157
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 160
    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 161
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 162
    return v5
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "objs"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    .end local p1
    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method

.method public getPhotosOfMeList(Ljava/lang/Object;ZI)Z
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 194
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, aPerson:Lcom/htc/opensense/social/data/Person;
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v1, v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 197
    .end local v0           #aPerson:Lcom/htc/opensense/social/data/Person;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 199
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 201
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 202
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 205
    :cond_1
    iput p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 206
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 207
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 208
    return v5
.end method

.method public getRecentMediaList(Ljava/lang/Object;ZI)Z
    .locals 6
    .parameter "objSource"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, aPerson:Lcom/htc/opensense/social/data/Person;
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v1, v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 175
    .end local v0           #aPerson:Lcom/htc/opensense/social/data/Person;
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 180
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 183
    :cond_1
    iput p3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I

    .line 184
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z

    .line 185
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;

    invoke-direct {v1, p0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqRecentMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 186
    return v5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    .line 70
    return-void
.end method
