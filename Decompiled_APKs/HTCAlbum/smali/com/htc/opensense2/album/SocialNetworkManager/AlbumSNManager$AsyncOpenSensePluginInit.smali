.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;
.super Landroid/os/AsyncTask;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncOpenSensePluginInit"
.end annotation

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


# instance fields
.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 1
    .parameter
    .parameter "plugin"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 462
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 463
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "AlbumSNManager"

    const-string v1, "DataPlugin init <<"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onInit()V

    .line 473
    const-string v0, "AlbumSNManager"

    const-string v1, "DataPlugin init >>"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 457
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 457
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
