.class public Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerFaceTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqSetList:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field

.field mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

.field mMediaWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mIsForceLiveUpdate:Z

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancelBackgroundAction()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    return-void
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    :cond_1
    if-nez p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mIsForceLiveUpdate:Z

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;

    invoke-direct {v2, p0, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    return-void
.end method

.method public setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mAsyncReqSetList:Landroid/os/AsyncTask;

    return-void
.end method
