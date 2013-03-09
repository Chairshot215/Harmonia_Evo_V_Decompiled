.class Lcom/android/dmportread/DMCommandService$4;
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
    .line 3209
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfUpdate"

    .prologue
    .line 3214
    :try_start_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/dmportread/DMCommandService;->access$1700(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3215
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/dmportread/DMCommandService$LoadCallsRunnable;

    iget-object v4, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/dmportread/DMCommandService$LoadCallsRunnable;-><init>(Lcom/android/dmportread/DMCommandService;Lcom/android/dmportread/DMCommandService$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/dmportread/DMCommandService;->access$1702(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3216
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    #getter for: Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/dmportread/DMCommandService;->access$1700(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3226
    :goto_0
    return-void

    .line 3218
    :cond_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService$4;->this$0:Lcom/android/dmportread/DMCommandService;

    const/4 v2, 0x1

    #setter for: Lcom/android/dmportread/DMCommandService;->mCallsChanged:Z
    invoke-static {v1, v2}, Lcom/android/dmportread/DMCommandService;->access$1502(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 3219
    const-string v1, "loadSms"

    const-string v2, "Reset flag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3221
    :catch_0
    move-exception v0

    .line 3222
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "DMCmdSvs"

    const-string v2, "Error while reloading from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
