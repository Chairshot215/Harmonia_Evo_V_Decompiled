.class Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnmountReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method private constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/musicenhancer/EnhancerService;Lcom/htc/musicenhancer/EnhancerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, action:Ljava/lang/String;
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive unmount --. Action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 658
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, mountPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, externalPath:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    const-string v3, "[EnhancerService]"

    const-string v4, "received unmounted"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v3, v7, v6}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    .line 670
    .end local v1           #externalPath:Ljava/lang/String;
    .end local v2           #mountPath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$UnmountReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v3, v7, v6}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    goto :goto_0
.end method
