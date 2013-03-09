.class Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;
.super Ljava/lang/Thread;
.source "AddListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/AddListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAddAdapterThread"
.end annotation


# instance fields
.field private mTid:I

.field final synthetic this$0:Lcom/htc/launcher/AddListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/launcher/AddListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->mTid:I

    return-void
.end method


# virtual methods
.method public needUpSpeed()V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    iget v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 52
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    #getter for: Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/AddListAdapter;->access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "AddListAdapter"

    const-string v1, "LoadAddAdapterThread run but mLauncher is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->mTid:I

    .line 60
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    new-instance v1, Lcom/htc/launcher/AddAdapter;

    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    #getter for: Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v2}, Lcom/htc/launcher/AddListAdapter;->access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/launcher/AddAdapter;-><init>(Lcom/htc/launcher/Launcher;)V

    #setter for: Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;
    invoke-static {v0, v1}, Lcom/htc/launcher/AddListAdapter;->access$102(Lcom/htc/launcher/AddListAdapter;Lcom/htc/launcher/AddAdapter;)Lcom/htc/launcher/AddAdapter;

    .line 62
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/AddListAdapter;->access$202(Lcom/htc/launcher/AddListAdapter;Z)Z

    .line 63
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    #getter for: Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/AddListAdapter;->access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->refreshAddToHomeAdapter()V

    .line 64
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    #getter for: Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/AddListAdapter;->access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread$1;-><init>(Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
