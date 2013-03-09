.class public Lcom/htc/reportagent/receiver/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;
    }
.end annotation


# static fields
.field private static final tag:Ljava/lang/String; = "BugReportBootCompleteReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    const-string v0, "BugReportBootCompleteReceiver"

    const-string v1, "Boot complete receiver"

    invoke-static {v0, v1}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/reportagent/receiver/BootCompleteReceiver$Runner;-><init>(Lcom/htc/reportagent/receiver/BootCompleteReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method
