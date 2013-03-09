.class Lcom/htc/dlnamiddlelayer/DLNAService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$1;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 828
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$1;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$1;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->notifySDCardRemoved(Ljava/lang/String;)V

    .line 842
    :cond_1
    return-void
.end method
