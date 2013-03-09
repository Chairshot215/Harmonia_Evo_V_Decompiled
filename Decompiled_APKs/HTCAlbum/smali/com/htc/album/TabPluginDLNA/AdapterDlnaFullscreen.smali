.class public Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;
.super Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.source "AdapterDlnaFullscreen.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterDlnaFullscreen"


# instance fields
.field private bAddVirtualMoreItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;->bAddVirtualMoreItem:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "AdapterDlnaFullscreen"

    return-object v0
.end method

.method protected onSyncRecentList(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;->bAddVirtualMoreItem:Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;->syncListItem(Ljava/lang/Object;Z)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;->onNotifyUpdateComplete()V

    .line 33
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;->notifyDataSetChanged()V

    goto :goto_0
.end method
