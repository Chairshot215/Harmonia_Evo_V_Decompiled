.class public Lcom/android/providers/contacts/HTCSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HTCSyncReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HTCSyncReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    new-instance v0, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
