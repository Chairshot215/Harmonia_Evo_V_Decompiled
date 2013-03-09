.class public abstract Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneLocalBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<TVIEW;TADAPTER;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SceneLocalBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    return-void
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 42
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 25
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalBase;,"Lcom/htc/album/TabPluginDevice/SceneLocalBase<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 26
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 29
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v1

    .line 30
    .local v1, isDataChanged:Z
    const-string v2, "SceneLocalBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalBase][onResume]: dirty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz v1, :cond_0

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 37
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v1           #isDataChanged:Z
    :cond_0
    return-void
.end method
