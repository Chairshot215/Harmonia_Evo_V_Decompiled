.class Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;
.super Ljava/lang/Thread;
.source "AddListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/AddListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAddAdapterThread"
.end annotation


# instance fields
.field private mTid:I

.field final synthetic this$0:Lcom/htc/home/personalize/AddListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/AddListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->mTid:I

    return-void
.end method


# virtual methods
.method public needUpSpeed()V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->mTid:I

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 54
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    #getter for: Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    invoke-static {v0}, Lcom/htc/home/personalize/AddListAdapter;->access$000(Lcom/htc/home/personalize/AddListAdapter;)Lcom/htc/home/personalize/PersonalizeMain;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "AddListAdapter"

    const-string v1, "LoadAddAdapterThread run but mPersonalizeMain is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->mTid:I

    .line 62
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    new-instance v1, Lcom/htc/home/personalize/AddAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    #getter for: Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    invoke-static {v2}, Lcom/htc/home/personalize/AddListAdapter;->access$000(Lcom/htc/home/personalize/AddListAdapter;)Lcom/htc/home/personalize/PersonalizeMain;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    #getter for: Lcom/htc/home/personalize/AddListAdapter;->mTabID:I
    invoke-static {v3}, Lcom/htc/home/personalize/AddListAdapter;->access$200(Lcom/htc/home/personalize/AddListAdapter;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/home/personalize/AddAdapter;-><init>(Lcom/htc/home/personalize/PersonalizeMain;I)V

    #setter for: Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;
    invoke-static {v0, v1}, Lcom/htc/home/personalize/AddListAdapter;->access$102(Lcom/htc/home/personalize/AddListAdapter;Lcom/htc/home/personalize/AddAdapter;)Lcom/htc/home/personalize/AddAdapter;

    .line 65
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z
    invoke-static {v0, v1}, Lcom/htc/home/personalize/AddListAdapter;->access$302(Lcom/htc/home/personalize/AddListAdapter;Z)Z

    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/home/personalize/AddListAdapter;

    #getter for: Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    invoke-static {v0}, Lcom/htc/home/personalize/AddListAdapter;->access$000(Lcom/htc/home/personalize/AddListAdapter;)Lcom/htc/home/personalize/PersonalizeMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/PersonalizeMain;->refreshAddToHomeAdapter()V

    goto :goto_0
.end method
