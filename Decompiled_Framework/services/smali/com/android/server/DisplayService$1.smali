.class Lcom/android/server/DisplayService$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/DisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DisplayService$1;->this$0:Lcom/android/server/DisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/server/DisplayService$1;->this$0:Lcom/android/server/DisplayService;

    #getter for: Lcom/android/server/DisplayService;->mListener:Lcom/android/server/DisplayListener;
    invoke-static {v4}, Lcom/android/server/DisplayService;->access$000(Lcom/android/server/DisplayService;)Lcom/android/server/DisplayListener;

    move-result-object v4

    const-class v5, Lcom/android/server/DisplayListener;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "sys.psaver.rdfps"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0x1e

    :cond_2
    iget-object v4, p0, Lcom/android/server/DisplayService$1;->this$0:Lcom/android/server/DisplayService;

    #calls: Lcom/android/server/DisplayService;->setAdjustFPS(I)V
    invoke-static {v4, v1}, Lcom/android/server/DisplayService;->access$100(Lcom/android/server/DisplayService;I)V

    goto :goto_0

    :cond_3
    const-string v4, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DisplayService$1;->this$0:Lcom/android/server/DisplayService;

    #calls: Lcom/android/server/DisplayService;->setAdjustFPS(I)V
    invoke-static {v4, v1}, Lcom/android/server/DisplayService;->access$100(Lcom/android/server/DisplayService;I)V

    goto :goto_0
.end method
