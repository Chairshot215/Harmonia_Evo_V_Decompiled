.class Lcom/android/browser/provider/SnapshotProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/SnapshotProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/SnapshotProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/provider/SnapshotProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    iget-object v0, v0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/provider/SnapshotProvider$1;->this$0:Lcom/android/browser/provider/SnapshotProvider;

    iget-object v0, v0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method
