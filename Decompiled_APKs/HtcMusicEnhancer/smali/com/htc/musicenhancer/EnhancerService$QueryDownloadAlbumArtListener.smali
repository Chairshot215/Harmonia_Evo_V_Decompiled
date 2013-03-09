.class Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;
.super Ljava/lang/Object;
.source "EnhancerService.java"

# interfaces
.implements Lcom/htc/musicenhancer/QueryDownloadAlbumArt$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryDownloadAlbumArtListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 4
    .parameter "downloadAlbumInfo"

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1315
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadAlbumInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1317
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1318
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCompleted([Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    .locals 4
    .parameter "downloadAlbumInfos"
    .parameter "failCount"

    .prologue
    .line 1297
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1301
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$1200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1304
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1305
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$QueryDownloadAlbumArtListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
