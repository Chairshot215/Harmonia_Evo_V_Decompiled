.class Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;
.super Landroid/os/AsyncTask;
.source "HTCSyncReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HTCSyncReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessMergeScheduleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private declared-synchronized mergeContactAfterHTCSyncAsync(Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 1
    .parameter "mContactAggregator"

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactAggregator;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 5
    .parameter "intents"

    .prologue
    const/4 v4, 0x0

    .line 58
    aget-object v1, p1, v4

    .line 59
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/HtcContactAggregatorManager;->getContactAggregatorInstance()Lcom/android/providers/contacts/ContactAggregator;

    move-result-object v2

    .line 62
    .local v2, mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;
    if-eqz v2, :cond_0

    .line 63
    const-string v3, "psclient.intent.action.sync_begin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 66
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator;->interrupt()V

    .line 75
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 67
    :cond_1
    const-string v3, "psclient.intent.action.stop_sync"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "psclient.intent.action.sync_end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 71
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/HTCSyncReceiver$ProcessMergeScheduleTask;->mergeContactAfterHTCSyncAsync(Lcom/android/providers/contacts/ContactAggregator;)V

    goto :goto_0
.end method
