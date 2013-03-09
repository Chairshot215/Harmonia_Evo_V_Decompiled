.class public Lcom/htc/BugReport/BugReportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BugReportReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/BugReport/BugReportReceiver$Runner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BugReportReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/BugReport/BugReportReceiver$Runner;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/BugReport/BugReportReceiver$Runner;-><init>(Lcom/htc/BugReport/BugReportReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    return-void
.end method
