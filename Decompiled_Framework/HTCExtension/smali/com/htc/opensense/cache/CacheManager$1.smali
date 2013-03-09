.class Lcom/htc/opensense/cache/CacheManager$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/htc/opensense/cache/ThreadExecutorHelper$TaskStopExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense/cache/CacheManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/cache/CacheManager$1;->this$0:Lcom/htc/opensense/cache/CacheManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stop(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 6

    const/4 v2, 0x1

    move-object v0, p2

    check-cast v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/htc/opensense/cache/CacheManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->taskId:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/htc/opensense/cache/CacheManager$DownloadFutureTask;->cancel(Z)Z

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
