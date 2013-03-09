.class Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CollectDiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 201
    const-string v1, "Enable"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, enable:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    const-string v1, "Yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z
    invoke-static {v2, v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$102(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;Z)Z

    .line 203
    const-string v1, "OOBE_CollectDiagnosticsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->mbAllowCollectDiagnostics:Z
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->dismissLoadingDialog()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    .line 205
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->updateCheckBox()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V

    .line 206
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
