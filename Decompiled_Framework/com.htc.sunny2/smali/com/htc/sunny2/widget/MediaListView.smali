.class public abstract Lcom/htc/sunny2/widget/MediaListView;
.super Lcom/htc/sunny2/view/SViewGroup;
.source "MediaListView.java"

# interfaces
.implements Lcom/htc/sunny2/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/MediaListView$1;,
        Lcom/htc/sunny2/widget/MediaListView$SetMediaList;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mMediaList:Lcom/htc/sunny2/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/view/SViewGroup;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    const-class v0, Lcom/htc/sunny2/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunny2/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->init()V

    return-void
.end method

.method private checkSetMediaListComplete_block()V
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-boolean v1, v1, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-void
.end method


# virtual methods
.method public getMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    return-object v0
.end method

.method public notifyMediaDataChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    return-void
.end method

.method public notifyMediaDataChange(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 3

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/view/SViewGroup;->onLayout(ZFFFII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-boolean v2, v2, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    iget-object v0, v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunny2/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunny2/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onLayoutChildView(ZFFFII)V
.end method

.method public setMediaList(Lcom/htc/sunny2/IMediaList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/MediaListView;->mSetMediaList:Lcom/htc/sunny2/widget/MediaListView$SetMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->set(Lcom/htc/sunny2/IMediaList;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/MediaListView;->requestLayout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaList_block(Lcom/htc/sunny2/IMediaList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/MediaListView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView;->checkSetMediaListComplete_block()V

    return-void
.end method
