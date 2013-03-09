.class public abstract Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "CollectionBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        ">",
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<TVIEW;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CollectionBaseScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 6

    .prologue
    .line 43
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "collection_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/Collection;

    .line 45
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    const/4 v2, 0x0

    .line 46
    .local v2, newCollection:Lcom/htc/album/modules/collection/Collection;
    if-nez v0, :cond_0

    .line 48
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/collection/Collection;->setPhotoCount(I)V

    .line 57
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/collection/Collection;->setFilter(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/collection/Collection;->setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V

    goto :goto_0
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 30
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 33
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 37
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 38
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onLoadData()V

    .line 39
    return-void
.end method
