.class public Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerPeople.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IMediaHandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;,
        Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaHandlerPeople"


# instance fields
.field private mAsyncReqActiveUser:Landroid/os/AsyncTask;

.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqUser:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
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
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/htc/opensense/social/SocialServiceManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "serviceMgr"
    .parameter "dataPlugin"
    .parameter "szServiceName"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 42
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 65
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 67
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 68
    instance-of v0, p4, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p4, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .end local p4
    iput-object p4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "szUID"
    .parameter "szExtension"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "szUID"
    .parameter "objList"
    .parameter "szExtension"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    return-void
.end method


# virtual methods
.method public actionInProgress()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public cancelBackgroundAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 102
    :cond_0
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 104
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 109
    :cond_1
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method public getActiveUser(Z)V
    .locals 5
    .parameter "bIsForceSync"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 204
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 208
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqActiveUser:Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method public getActiveUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    return-object v0
.end method

.method public getActiveUserSync()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v5}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v1

    .line 215
    .local v1, personData:Lcom/htc/opensense/album/plugin/PersonData;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 216
    .local v2, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 217
    move-object v0, v1

    .line 218
    .local v0, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 222
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v6, v7, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    .line 231
    .end local v0           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v1           #personData:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v2           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getMediaInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 152
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 156
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method public getMediaInfo2(Ljava/lang/String;)V
    .locals 5
    .parameter "szUID"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 169
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 173
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqUser:Landroid/os/AsyncTask;

    .line 175
    return-void
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "szUID"

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, personOp:Lcom/htc/opensense/social/PersonOp;
    const/4 v4, 0x0

    .line 117
    .local v4, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 118
    .local v7, szUIDs:[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 121
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 123
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 124
    .local v6, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v3, :cond_0

    .line 126
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 128
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v1

    .line 129
    .local v1, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8, v6}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v1           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v3           #nIndex:I
    .end local v6           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "MediaHandlerPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
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

    .line 235
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    check-cast p1, Lcom/htc/opensense/social/PersonOp;

    .end local p1
    invoke-direct {v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 242
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 245
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 248
    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z

    .line 249
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mAsyncReqList:Landroid/os/AsyncTask;

    .line 250
    return v4
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "objs"

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v3, :cond_1

    .line 181
    array-length v3, p1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Person;

    .line 182
    .local v1, people:[Lcom/htc/opensense/social/data/Person;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    array-length v3, p1

    if-le v3, v0, :cond_0

    .line 184
    new-instance v4, Lcom/htc/opensense/social/data/Person;

    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v0

    .line 185
    const-string v3, "MediaHandlerPeople"

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

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v2

    .line 189
    .end local v0           #nIndex:I
    .end local v1           #people:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    return-object v2
.end method

.method public getUserResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public isExistActiveUserCache()Z
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 195
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 87
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 88
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 75
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 2
    .parameter "dataPlugin"

    .prologue
    .line 78
    instance-of v0, p1, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    check-cast p1, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .end local p1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 81
    :cond_0
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][setDataPlugin]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public updateCacheList(Ljava/lang/Object;)Z
    .locals 8
    .parameter "objList"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, bResult:Z
    const/4 v2, 0x0

    .line 269
    .local v2, listFriend:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez p1, :cond_0

    move v1, v0

    .line 285
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    move-object v2, p1

    .line 272
    check-cast v2, Ljava/util/List;

    .line 273
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 277
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    move v1, v0

    .line 285
    .restart local v1       #bResult:I
    goto :goto_0
.end method
