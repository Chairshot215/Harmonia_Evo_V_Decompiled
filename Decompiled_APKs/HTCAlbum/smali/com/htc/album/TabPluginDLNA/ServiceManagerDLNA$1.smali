.class Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;
.super Ljava/lang/Object;
.source "ServiceManagerDLNA.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 248
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onServiceConnected]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    #setter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$102(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 252
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onServiceConnected]: force it "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onBindServiceConnection(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$200(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Z)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onBindServiceConnection(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$200(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 265
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onServiceDisconnected]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->unRegisterServiceCallback()V

    .line 267
    return-void
.end method
