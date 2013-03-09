.class Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcMessageUploader/UploadMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcMessageUploader/UploadMessageService;


# direct methods
.method private constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 159
    sget-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "htcMessageUploader"

    const-string v2, "[UploadMessageService] ConnectivityReceiver::onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 162
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_3

    .line 165
    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    #getter for: Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z
    invoke-static {v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$300(Lcom/htc/htcMessageUploader/UploadMessageService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    const/4 v2, 0x1

    #setter for: Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z
    invoke-static {v1, v2}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$302(Lcom/htc/htcMessageUploader/UploadMessageService;Z)Z

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    #calls: Lcom/htc/htcMessageUploader/UploadMessageService;->scheduleUpload()V
    invoke-static {v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$400(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    #getter for: Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z
    invoke-static {v1}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$300(Lcom/htc/htcMessageUploader/UploadMessageService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ConnectivityReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    const/4 v2, 0x0

    #setter for: Lcom/htc/htcMessageUploader/UploadMessageService;->mNetworkConnected:Z
    invoke-static {v1, v2}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$302(Lcom/htc/htcMessageUploader/UploadMessageService;Z)Z

    goto :goto_1
.end method
