.class Lcom/htc/android/htcsetupwizard/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;
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
    .line 425
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 429
    if-nez p2, :cond_1

    .line 431
    const-string v1, "OOBE_MainActivity"

    const-string v2, "onReceive(), intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, action:Ljava/lang/String;
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(), action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/4 v2, 0x0

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->controlWIFIScanService(Z)V
    invoke-static {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$300(Lcom/htc/android/htcsetupwizard/MainActivity;Z)V

    .line 440
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->unregisterPoweroffReceiver()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$400(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    goto :goto_0

    .line 442
    :cond_2
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const-string v1, "homekey"

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homekey pressed, mbEnableHomeKeyToLauncher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbEnableHomeKeyToLauncher:Z
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$500(Lcom/htc/android/htcsetupwizard/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbEnableHomeKeyToLauncher:Z
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$500(Lcom/htc/android/htcsetupwizard/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->finish()V

    goto :goto_0
.end method
