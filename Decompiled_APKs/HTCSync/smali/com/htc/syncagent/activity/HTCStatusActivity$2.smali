.class Lcom/htc/syncagent/activity/HTCStatusActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "HTCStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/activity/HTCStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    const-string v0, "FDUI"

    const-string v1, "usb disconnect"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 66
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$2(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$2(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$2(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-virtual {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->finish()V

    .line 70
    return-void
.end method
