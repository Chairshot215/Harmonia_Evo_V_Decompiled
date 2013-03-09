.class public Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAsyncReqActiveUser:Landroid/os/AsyncTask;

.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqUser:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field

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

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "serviceMgr"
    .parameter "szServiceName"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 38
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 62
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 63
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p4, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "szUID"
    .parameter "objList"
    .parameter "szExtension"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    return-void
.end method


# virtual methods
.method public cancelBackgroundAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 82
    :cond_0
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 84
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 89
    :cond_1
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public getActiveUser(Z)V
    .locals 5
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 184
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 188
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 189
    return-void
.end method

.method public getActiveUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    return-object v0
.end method

.method public getMediaInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 132
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 136
    :cond_0
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 138
    return-void
.end method

.method public getMediaInfo2(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 149
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 153
    :cond_0
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "szUID"

    .prologue
    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, personOp:Lcom/htc/opensense/social/PersonOp;
    const/4 v4, 0x0

    .line 97
    .local v4, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 98
    .local v7, szUIDs:[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 101
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 103
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 104
    .local v6, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v3, :cond_0

    .line 106
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 108
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v1

    .line 109
    .local v1, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8, v6}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v3           #nIndex:I
    .end local v6           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter "objSource"
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    check-cast p1, Lcom/htc/opensense/social/PersonOp;

    .end local p1
    invoke-direct {v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 202
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 205
    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 206
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 207
    return v4
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "objs"

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v3, :cond_1

    .line 161
    array-length v3, p1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Person;

    .line 162
    .local v1, people:[Lcom/htc/opensense/social/data/Person;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    array-length v3, p1

    if-le v3, v0, :cond_0

    .line 164
    new-instance v4, Lcom/htc/opensense/social/data/Person;

    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v0

    .line 165
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MediaHandlerPeople][getMediaOpFast]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v2

    .line 169
    .end local v0           #nIndex:I
    .end local v1           #people:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    return-object v2
.end method

.method public getUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public isExistActiveUserCache()Z
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 175
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 74
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 68
    return-void
.end method

.method public updateCacheList(Ljava/lang/Object;)Z
    .locals 8
    .parameter "objList"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 226
    .local v2, listFriend:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez p1, :cond_0

    move v1, v0

    .line 242
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    move-object v2, p1

    .line 229
    check-cast v2, Ljava/util/List;

    .line 230
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 232
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 234
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    sget-object v6, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    move v1, v0

    .line 242
    .restart local v1       #bResult:I
    goto :goto_0
.end method
