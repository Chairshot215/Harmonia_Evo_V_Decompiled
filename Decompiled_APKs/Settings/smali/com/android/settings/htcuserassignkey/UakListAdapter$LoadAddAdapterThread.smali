.class Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;
.super Ljava/lang/Thread;
.source "UakListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAddAdapterThread"
.end annotation


# instance fields
.field private mTid:I

.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->mTid:I

    return-void
.end method


# virtual methods
.method public needUpSpeed()V
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 77
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$000(Lcom/android/settings/htcuserassignkey/UakListAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "UakListAdapter"

    const-string v1, "LoadAddAdapterThread run but mTarget is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->mTid:I

    .line 86
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->listadaptertime:J
    invoke-static {v0, v1, v2}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$102(Lcom/android/settings/htcuserassignkey/UakListAdapter;J)J

    .line 87
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    new-instance v1, Lcom/android/settings/htcuserassignkey/UakAdapter;

    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$000(Lcom/android/settings/htcuserassignkey/UakListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/htcuserassignkey/UakAdapter;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->mAdapter:Lcom/android/settings/htcuserassignkey/UakAdapter;
    invoke-static {v0, v1}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$202(Lcom/android/settings/htcuserassignkey/UakListAdapter;Lcom/android/settings/htcuserassignkey/UakAdapter;)Lcom/android/settings/htcuserassignkey/UakAdapter;

    .line 91
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->isAddAdapterReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$302(Lcom/android/settings/htcuserassignkey/UakListAdapter;Z)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$000(Lcom/android/settings/htcuserassignkey/UakListAdapter;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/htcuserassignkey/UakListAdapter$UiRefreshListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakListAdapter$LoadAddAdapterThread;->this$0:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    #getter for: Lcom/android/settings/htcuserassignkey/UakListAdapter;->mTarget:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->access$000(Lcom/android/settings/htcuserassignkey/UakListAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/htcuserassignkey/UakListAdapter$UiRefreshListener;

    invoke-interface {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter$UiRefreshListener;->RefreshContent()V

    goto :goto_0
.end method
