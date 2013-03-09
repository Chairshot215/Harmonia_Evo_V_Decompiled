.class Lcom/htc/dockmode/DeskDockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeskDockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/DeskDockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/DeskDockSettings;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/DeskDockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    invoke-virtual {v2}, Lcom/htc/dockmode/DeskDockSettings;->releaseReceiver()V

    .line 99
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    invoke-virtual {v2}, Lcom/htc/dockmode/DeskDockSettings;->finish()V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    #getter for: Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_CHECKED:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dockmode/DeskDockSettings;->access$000(Lcom/htc/dockmode/DeskDockSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    #getter for: Lcom/htc/dockmode/DeskDockSettings;->mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;
    invoke-static {v2}, Lcom/htc/dockmode/DeskDockSettings;->access$100(Lcom/htc/dockmode/DeskDockSettings;)Lcom/htc/dockmode/preference/HtcAskMePreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setAskMe(Z)V

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    #getter for: Lcom/htc/dockmode/DeskDockSettings;->INTENT_DONTASK_UNCHECKED:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dockmode/DeskDockSettings;->access$200(Lcom/htc/dockmode/DeskDockSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    #getter for: Lcom/htc/dockmode/DeskDockSettings;->mAskMe:Lcom/htc/dockmode/preference/HtcAskMePreference;
    invoke-static {v2}, Lcom/htc/dockmode/DeskDockSettings;->access$100(Lcom/htc/dockmode/DeskDockSettings;)Lcom/htc/dockmode/preference/HtcAskMePreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setAskMe(Z)V

    .line 107
    :cond_2
    const-string v2, "default_type_change_notify_from_connect_to_pc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "deskdock_connection_type"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 110
    invoke-static {}, Lcom/htc/dockmode/DeskDockSettings;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "First launch or not assign a value to default connection type."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "Charge Only"

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/htc/dockmode/DeskDockSettings$1;->this$0:Lcom/htc/dockmode/DeskDockSettings;

    #getter for: Lcom/htc/dockmode/DeskDockSettings;->mDefaultConnectionType:Lcom/htc/dockmode/preference/HtcConnectionTypePreference;
    invoke-static {v2}, Lcom/htc/dockmode/DeskDockSettings;->access$400(Lcom/htc/dockmode/DeskDockSettings;)Lcom/htc/dockmode/preference/HtcConnectionTypePreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/dockmode/preference/HtcConnectionTypePreference;->setDefaultType(Ljava/lang/String;)V

    .line 115
    .end local v1           #type:Ljava/lang/String;
    :cond_4
    return-void
.end method
