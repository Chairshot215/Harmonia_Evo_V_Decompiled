.class Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;
.super Ljava/lang/Thread;
.source "DisplayLinkedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplayLinkedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mDoLinkContactOperationThreads"
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    .line 932
    const-string v0, "mDoLinkContactOperationThreads"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->init()V

    .line 934
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    .line 945
    .local v0, context:Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/app/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 947
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DisplayLinkedActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 949
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 941
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    .line 953
    const-string v2, "DisplayLinkedActivity"

    const-string v3, "start do link/unlink contacts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 955
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    .line 956
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 958
    .local v1, time:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->syncAtLast()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1000(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    .line 959
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #calls: Lcom/android/htccontacts/link/DisplayLinkedActivity;->applyBatchOperations()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1100(Lcom/android/htccontacts/link/DisplayLinkedActivity;)V

    .line 960
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V

    .line 962
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastSuggestionChangeIntent(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 966
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 967
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 970
    return-void

    .line 965
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1200(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 966
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplayLinkedActivity;

    #getter for: Lcom/android/htccontacts/link/DisplayLinkedActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplayLinkedActivity;->access$1300(Lcom/android/htccontacts/link/DisplayLinkedActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 967
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplayLinkedActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 965
    throw v2
.end method
