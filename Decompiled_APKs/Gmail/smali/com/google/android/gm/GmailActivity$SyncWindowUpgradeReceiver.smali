.class Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncWindowUpgradeReceiver"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/google/android/gm/GmailActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/GmailActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->this$0:Lcom/google/android/gm/GmailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gm.intent.ACTION_DISPLAY_SYNC_WINDOW_UPGRADE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->this$0:Lcom/google/android/gm/GmailActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/GmailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mEnabled:Z

    .line 90
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mEnabled:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->this$0:Lcom/google/android/gm/GmailActivity;

    iget-object v1, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/GmailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->mEnabled:Z

    .line 83
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/GmailActivity$SyncWindowUpgradeReceiver;->this$0:Lcom/google/android/gm/GmailActivity;

    #calls: Lcom/google/android/gm/GmailActivity;->showSyncWindowUpgradeDialog()Z
    invoke-static {v0}, Lcom/google/android/gm/GmailActivity;->access$000(Lcom/google/android/gm/GmailActivity;)Z

    .line 95
    return-void
.end method
