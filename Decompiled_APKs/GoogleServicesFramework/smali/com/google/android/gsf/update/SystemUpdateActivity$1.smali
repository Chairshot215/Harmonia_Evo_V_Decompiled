.class Lcom/google/android/gsf/update/SystemUpdateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

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
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$000(Lcom/google/android/gsf/update/SystemUpdateActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$100(Lcom/google/android/gsf/update/SystemUpdateActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "SystemUpdateActivity"

    const-string v1, "screen turned off during countdown; installing immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const v0, 0x3112a

    const-string v1, "activity-countdown-screen-off-install"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    #calls: Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$200(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    .line 103
    :cond_1
    return-void
.end method
