.class final Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifyThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 507
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    .line 511
    .local v1, notify:Landroid/app/Notification;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 512
    .local v2, type:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 514
    .local v0, cookie:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 517
    :pswitch_0
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "NOTIFICATION_CREATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$800(Lcom/htc/dlnamiddlelayer/DLNAService;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCGallery:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$900(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mIsDMCMusic:Z
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1000(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    :cond_3
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mNotifyManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$800(Lcom/htc/dlnamiddlelayer/DLNAService;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 525
    :pswitch_1
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "NOTIFICATION_CANCEL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/DLNAService$NotifyThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V
    invoke-static {v3, v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1100(Lcom/htc/dlnamiddlelayer/DLNAService;I)V

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
