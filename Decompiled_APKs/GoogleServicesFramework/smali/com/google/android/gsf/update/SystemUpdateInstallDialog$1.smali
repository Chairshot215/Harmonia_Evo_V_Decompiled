.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUpdateInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$000(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #getter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J
    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 84
    :cond_0
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "screen turned off during countdown; installing immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v0, 0x3112a

    const-string v1, "dialog-countdown-screen-off-install"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startUpdate()V
    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$200(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 89
    :cond_1
    return-void
.end method
