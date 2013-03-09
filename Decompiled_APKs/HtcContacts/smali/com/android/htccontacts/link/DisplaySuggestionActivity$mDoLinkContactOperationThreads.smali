.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;
.super Ljava/lang/Thread;
.source "DisplaySuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mDoLinkContactOperationThreads"
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    .line 975
    const-string v0, "mDoLinkContactOperationThreads"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-direct {p0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->init()V

    .line 977
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    .line 988
    .local v0, context:Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 990
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DisplaySuggestionActvity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 992
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 984
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    .line 996
    const-string v2, "DisplaySuggestionActvity"

    const-string v3, "start do link/unlink contacts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 998
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    .line 999
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1001
    .local v1, time:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isOK:Z
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$200(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->linkSelectedSuggest()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1500(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->removeAllSuggest()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1600(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 1006
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->applyBatchOperations()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1700(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 1007
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1800(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V

    .line 1009
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastSuggestionChangeIntent(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1900(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1014
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1016
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1020
    return-void

    .line 1011
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1900(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1014
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$mDoLinkContactOperationThreads;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1011
    throw v2
.end method
