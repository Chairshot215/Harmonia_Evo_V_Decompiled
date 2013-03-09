.class public abstract Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;
.super Lcom/htc/opensense/social/IServiceCallback$Stub;
.source "SocialServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/SocialServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTaskCallback"
.end annotation


# instance fields
.field mService:Lcom/htc/opensense/social/ISocialService;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/htc/opensense/social/IServiceCallback$Stub;-><init>()V

    .line 437
    #getter for: Lcom/htc/opensense/social/SocialServiceManager;->mService:Lcom/htc/opensense/social/ISocialService;
    invoke-static {p1}, Lcom/htc/opensense/social/SocialServiceManager;->access$000(Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->mService:Lcom/htc/opensense/social/ISocialService;

    .line 438
    return-void
.end method


# virtual methods
.method public onAlbumsOperationFinish([Lcom/htc/opensense/social/data/Album;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .locals 3
    .parameter "albums"
    .parameter "uid"
    .parameter "error"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v2, Lcom/htc/opensense/social/AlbumOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v1, p1, v2}, Lcom/htc/opensense/social/AlbumOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    .line 447
    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->onGetAlbumsCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 449
    return-void
.end method

.method public onFeedsOperationFinish([Lcom/htc/opensense/social/data/Feed;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .locals 2
    .parameter "feeds"
    .parameter "uid"
    .parameter "error"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-static {v1, p1}, Lcom/htc/opensense/social/FeedOp;->convertToFeedServiceList(Lcom/htc/opensense/social/ISocialService;[Lcom/htc/opensense/social/data/Feed;)Ljava/util/List;

    move-result-object v0

    .line 458
    .local v0, feedList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/FeedOp;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->onGetFeedsCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 459
    return-void
.end method

.method public abstract onGetAlbumsCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/RemoteError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetFeedsCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/FeedOp;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/RemoteError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetPeopleCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/social/RemoteError;",
            ")V"
        }
    .end annotation
.end method

.method public onPeopleOperationFinish([Lcom/htc/opensense/social/data/Person;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .locals 3
    .parameter "people"
    .parameter "uid"
    .parameter "error"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->mService:Lcom/htc/opensense/social/ISocialService;

    sget-object v2, Lcom/htc/opensense/social/PersonOp;->CREATOR:Lcom/htc/opensense/social/DataOp$OpCreator;

    invoke-static {v1, p1, v2}, Lcom/htc/opensense/social/PersonOp;->convertToDataOpList(Lcom/htc/opensense/social/ISocialService;[Landroid/os/Parcelable;Lcom/htc/opensense/social/DataOp$OpCreator;)Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/opensense/social/SocialServiceManager$OnTaskCallback;->onGetPeopleCallback(Ljava/util/List;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V

    .line 469
    return-void
.end method
