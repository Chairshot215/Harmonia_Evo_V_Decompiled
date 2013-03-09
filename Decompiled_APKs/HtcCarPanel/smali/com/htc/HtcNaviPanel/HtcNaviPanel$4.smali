.class Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcNaviPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    const-string v0, "i rotation"

    const-string v1, "exit car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->releaseReceiver()V

    .line 515
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->finish()V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "HtcNaviPanel"

    const-string v1, "Dock Receiver!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #calls: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->exitCarPanel()V
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$700(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    .line 519
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$600(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/app/UiModeManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 520
    const-string v0, "HtcNaviPanel"

    const-string v1, "mDockReceiver !ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;
    invoke-static {v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$600(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/app/UiModeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto :goto_0
.end method
