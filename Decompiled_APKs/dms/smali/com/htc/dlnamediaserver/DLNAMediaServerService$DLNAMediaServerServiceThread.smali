.class Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
.super Ljava/lang/Thread;
.source "DLNAMediaServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/DLNAMediaServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DLNAMediaServerServiceThread"
.end annotation


# instance fields
.field private mServerControl:Lcom/awox/jSebring/MediaServerManager;

.field final synthetic this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    .line 276
    const-string v0, "jSebring"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/awox/jSebring/MediaServerManager;

    invoke-direct {v0}, Lcom/awox/jSebring/MediaServerManager;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    .line 278
    return-void
.end method


# virtual methods
.method public ClearDatabase()Z
    .locals 4

    .prologue
    .line 312
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: Clearing database..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->ClearDatabase()I

    move-result v0

    .line 314
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    .line 317
    :cond_0
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: Clear error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ForceUpdate()Z
    .locals 2

    .prologue
    .line 403
    const-string v0, "DLNAMediaServer"

    const-string v1, "ServiceThread: ForceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->Update()I

    move-result v0

    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    const-string v0, "DLNAMediaServer"

    const-string v1, "ServiceThread: Getting FriendlyName..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->GetFriendlyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMediaType()J
    .locals 8

    .prologue
    .line 363
    const-wide/16 v2, 0x0

    .line 365
    .local v2, theMediaTypeReturned:J
    iget-object v4, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v4}, Lcom/awox/jSebring/MediaServerManager;->GetMediaTypeShared()I

    move-result v4

    int-to-long v0, v4

    .line 366
    .local v0, theMediaType:J
    const-string v4, "DLNAMediaServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceThread: GetMediaType ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget v4, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Error:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 370
    const-wide/16 v2, -0x1

    .line 382
    :cond_0
    :goto_0
    return-wide v2

    .line 374
    :cond_1
    sget v4, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Video:I

    int-to-long v4, v4

    and-long/2addr v4, v0

    sget v6, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Video:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 375
    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    .line 376
    :cond_2
    sget v4, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Picture:I

    int-to-long v4, v4

    and-long/2addr v4, v0

    sget v6, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Picture:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 377
    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 378
    :cond_3
    sget v4, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Music:I

    int-to-long v4, v4

    and-long/2addr v4, v0

    sget v6, Lcom/awox/jSebring/jSebringConstants;->kawMediaTypeShared_Music:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 379
    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method public IsRunning()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->IsRunning()Z

    move-result v0

    return v0
.end method

.method public IsUpdating()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->IsUpdating()Z

    move-result v0

    return v0
.end method

.method public Restart()Z
    .locals 4

    .prologue
    .line 299
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: Restarting server..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->RestartDMS()I

    move-result v0

    .line 301
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    .line 304
    :cond_0
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: Restart server error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SetFriendlyName(Ljava/lang/String;)Z
    .locals 4
    .parameter "aFriendlyName"

    .prologue
    .line 411
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: Updating FriendlyName ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1, p1}, Lcom/awox/jSebring/MediaServerManager;->SetFriendlyName(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 414
    const/4 v1, 0x1

    .line 417
    :goto_0
    return v1

    .line 416
    :cond_0
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: SetFriendlyName error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public SetMediaType(ZZZ)Z
    .locals 4
    .parameter "afVideo"
    .parameter "afAudio"
    .parameter "afImage"

    .prologue
    .line 350
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: Updating MediaType..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/awox/jSebring/MediaServerManager;->SetMediaTypeShared(ZZZ)I

    move-result v0

    .line 352
    .local v0, theRet:I
    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    .line 355
    :cond_0
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: SetMediaType error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Start()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->start()V

    .line 285
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "DLNAMediaServer"

    const-string v1, "ServiceThread: Stopping Server..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0}, Lcom/awox/jSebring/MediaServerManager;->StopDMS()I

    .line 293
    return-void
.end method

.method public addSharedFolder(Ljava/lang/String;)Z
    .locals 2
    .parameter "aSharedFolder"

    .prologue
    .line 325
    const-string v0, "DLNAMediaServer"

    const-string v1, "ServiceThread: Adding shared folder..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0, p1}, Lcom/awox/jSebring/MediaServerManager;->AddSharedFolder(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSharedFolder()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v1}, Lcom/awox/jSebring/MediaServerManager;->GetSharedFolderListAsString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, theSharedFolder:Ljava/lang/String;
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: getSharedFolder..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-object v0
.end method

.method public removeSharedFolder(Ljava/lang/String;)Z
    .locals 2
    .parameter "aSharedFolder"

    .prologue
    .line 333
    const-string v0, "DLNAMediaServer"

    const-string v1, "ServiceThread: Removing shared folder..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->mServerControl:Lcom/awox/jSebring/MediaServerManager;

    invoke-virtual {v0, p1}, Lcom/awox/jSebring/MediaServerManager;->RemoveSharedFolder(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/awox/jSebring/jSebring;->MediaServerManagerError_None:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 432
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: Starting Server..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #calls: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->NotifyServerStart()V
    invoke-static {v1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$100(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V

    .line 435
    invoke-static {}, Lcom/awox/jSebring/jSebring;->awDMS_main()I

    move-result v0

    .line 436
    .local v0, theRet:I
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    #calls: Lcom/htc/dlnamediaserver/DLNAMediaServerService;->NotifyServerCancel()V
    invoke-static {v1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->access$200(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V

    .line 438
    if-nez v0, :cond_0

    .line 439
    const-string v1, "DLNAMediaServer"

    const-string v2, "ServiceThread: Server stopped !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->this$0:Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-virtual {v1}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->stopSelf()V

    .line 444
    return-void

    .line 441
    :cond_0
    const-string v1, "DLNAMediaServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceThread: Error during startup ! ERR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
