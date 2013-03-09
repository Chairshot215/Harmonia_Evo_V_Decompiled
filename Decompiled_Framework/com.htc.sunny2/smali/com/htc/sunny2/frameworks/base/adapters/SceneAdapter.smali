.class public abstract Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.super Ljava/lang/Object;
.source "SceneAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAsyncReqList:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDataBundle:Landroid/os/Bundle;

.field protected mFlagListUpdate:I

.field protected mIsLoadInProgress:Z

.field protected mIsUnloaded:Z

.field private mSceneNotify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V
    .locals 5

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneAdapter][addSceneDataChangeNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public enableBroadcastNotify()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public isLoadingInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->notifyDataChangedAt(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onLoadData()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadData]: begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;-><init>(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

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

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onLoadData]: end..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLoadDataBegin(Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdating(Z)V

    return-void
.end method

.method protected onLoadDataCancelled(Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdating(Z)V

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->notifyDataSetChanged()V

    :goto_1
    iput v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsLoadInProgress:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onNotifyUpdateComplete()V

    goto :goto_1
.end method

.method protected varargs onLoadDataInBackground(Landroid/os/AsyncTask;[Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onNotifyUpdateComplete()V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->onNotifyUpdateComplete()V

    goto :goto_0
.end method

.method public onNotifyUpdating(Z)V
    .locals 6

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;->onNotifyUpdating(Z)V

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onUnloadData]: begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mIsUnloaded:Z

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mAsyncReqList:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneAdapter][onUnloadData]: end..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V
    .locals 5

    const/4 v1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneAdapter][removeSceneDataChangeNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mSceneNotify:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mDataBundle:Landroid/os/Bundle;

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadData()V

    return-void
.end method
