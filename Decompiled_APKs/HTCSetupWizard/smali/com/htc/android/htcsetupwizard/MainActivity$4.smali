.class Lcom/htc/android/htcsetupwizard/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;->registerStatusBarReadyReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 494
    if-nez p2, :cond_1

    .line 496
    const-string v1, "OOBE_MainActivity"

    const-string v2, "onReceive(), intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "OOBE_MainActivity"

    const-string v2, "onReceive(), STATUS_BAR_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->disableStatusBar()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$600(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 505
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/MainActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/htc/android/htcsetupwizard/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
