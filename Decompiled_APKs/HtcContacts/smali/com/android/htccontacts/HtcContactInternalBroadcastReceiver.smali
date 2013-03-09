.class public Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcContactInternalBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    sget-boolean v4, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-eqz v4, :cond_0

    .line 58
    if-eqz v0, :cond_0

    const-string v4, "com.android.htccontacts.ACTION_ULOG_PROFILE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const-string v4, "Profiling"

    const-string v5, "Go userProfilingContact"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-object v1, p1

    .line 63
    .local v1, finalContext:Landroid/content/Context;
    new-instance v2, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 65
    .local v2, handler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    new-instance v3, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver$1;-><init>(Lcom/android/htccontacts/HtcContactInternalBroadcastReceiver;Landroid/content/Context;)V

    .line 71
    .local v3, r:Ljava/lang/Runnable;
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackground(Ljava/lang/Runnable;)V

    .line 76
    .end local v1           #finalContext:Landroid/content/Context;
    .end local v2           #handler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    .end local v3           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
