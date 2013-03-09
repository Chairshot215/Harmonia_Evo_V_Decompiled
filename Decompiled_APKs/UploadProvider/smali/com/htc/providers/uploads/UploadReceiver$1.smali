.class Lcom/htc/providers/uploads/UploadReceiver$1;
.super Ljava/lang/Thread;
.source "UploadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/UploadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/UploadReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->this$0:Lcom/htc/providers/uploads/UploadReceiver;

    iput-object p2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 34
    const-string v2, "UploadReceiver"

    const-string v3, "Receiver onConnectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "networkInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 38
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    const-class v5, Lcom/htc/providers/uploads/UploadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/providers/uploads/UploadHelper;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/providers/uploads/UploadHelper;->getLastFrequency(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v2, "UploadReceiver"

    const-string v3, "Wifi, start auto upload service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/htc/providers/uploads/AutoUploadService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, autoUploadService:Landroid/content/Intent;
    const-string v2, "auto_upload_service_reason"

    const-string v3, "wifi_available"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    .end local v0           #autoUploadService:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/providers/uploads/UploadReceiver;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 52
    return-void
.end method
