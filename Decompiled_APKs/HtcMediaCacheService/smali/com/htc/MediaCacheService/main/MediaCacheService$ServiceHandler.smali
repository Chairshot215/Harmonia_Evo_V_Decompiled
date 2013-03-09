.class final Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/main/MediaCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaCacheService/main/MediaCacheService;


# direct methods
.method private constructor <init>(Lcom/htc/MediaCacheService/main/MediaCacheService;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/MediaCacheService/main/MediaCacheService;Lcom/htc/MediaCacheService/main/MediaCacheService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;-><init>(Lcom/htc/MediaCacheService/main/MediaCacheService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 167
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 169
    .local v1, arguments:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaCacheService][ServiceHandler]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-nez v1, :cond_0

    .line 172
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[MediaCacheService][handleMessage]-null-1"

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v4, "action"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    const-string v4, "folder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, folder:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[MediaCacheService][handleMessage]-null-2"

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaCacheService][ServiceHandler]+action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    const-string v4, "ACTION_SCANFINISH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    #calls: Lcom/htc/MediaCacheService/main/MediaCacheService;->doScanGalleryCache(ZZ)V
    invoke-static {v4, v5, v6}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$100(Lcom/htc/MediaCacheService/main/MediaCacheService;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_2
    :goto_1
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaCacheService][ServiceHandler]-action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/htc/MediaCacheService/main/MediaCacheService$ServiceHandler;->this$0:Lcom/htc/MediaCacheService/main/MediaCacheService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/htc/MediaCacheService/main/MediaCacheService;->stopSelf(I)V

    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception in handleMessage"

    invoke-static {v4, v5, v2}, Lcom/htc/MediaCacheService/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
