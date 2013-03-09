.class Lcom/android/dmportread/DMCommandService$1;
.super Landroid/database/ContentObserver;
.source "DMCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCommandService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfUpdate"

    .prologue
    const/4 v6, 0x1

    .line 502
    const-string v1, "DMCmdSvs"

    const-string v2, "mContactsObserver invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/dmportread/DMCommandService;->access$200(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;

    iget-object v4, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;-><init>(Lcom/android/dmportread/DMCommandService;Lcom/android/dmportread/DMCommandService$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/dmportread/DMCommandService;->access$202(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 506
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/dmportread/DMCommandService;->access$200(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    #setter for: Lcom/android/dmportread/DMCommandService;->mContactsDirty:Z
    invoke-static {v1, v6}, Lcom/android/dmportread/DMCommandService;->access$402(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 515
    return-void

    .line 508
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$1;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v2, 0x1

    #setter for: Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z
    invoke-static {v1, v2}, Lcom/android/dmportread/DMCommandService;->access$002(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 509
    const-string v1, "loadContacts"

    const-string v2, "Reset flag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "DMCmdSvs"

    const-string v2, "Error while reloading from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
