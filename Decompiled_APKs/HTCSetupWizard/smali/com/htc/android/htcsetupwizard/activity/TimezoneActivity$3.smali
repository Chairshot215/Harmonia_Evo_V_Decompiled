.class Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TimezoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 539
    const-string v0, "OOBE_TimezoneActivity"

    const-string v1, "Receive broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbIsSystemTimeChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->access$202(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;Z)Z

    .line 541
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->initialize()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    .line 542
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$3;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    .line 543
    return-void
.end method
