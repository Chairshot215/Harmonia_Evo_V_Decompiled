.class Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;
.super Ljava/lang/Thread;
.source "CleanCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/CleanCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanCacheThread"
.end annotation


# instance fields
.field final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/htc/lmw/steps/CleanCache;

.field final synthetic this$0:Lcom/htc/lmw/steps/CleanCache;


# direct methods
.method public constructor <init>(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;Lcom/htc/lmw/steps/CleanCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/AppInfo;",
            ">;",
            "Lcom/htc/lmw/steps/CleanCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 349
    if-eqz p2, :cond_0

    .line 350
    iput-object p2, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->apps:Ljava/util/List;

    .line 354
    :goto_0
    iput-object p3, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    .line 355
    return-void

    .line 352
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->apps:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->apps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    .local v0, count:I
    if-lez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->apps:Ljava/util/List;

    new-instance v3, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread$1;

    invoke-direct {v3, p0}, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread$1;-><init>(Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/lmw/AppManager;->clearCache(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/htc/lmw/steps/CleanCache$CleanCacheThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    #calls: Lcom/htc/lmw/steps/CleanCache;->onChachesCleaned()V
    invoke-static {v1}, Lcom/htc/lmw/steps/CleanCache;->access$800(Lcom/htc/lmw/steps/CleanCache;)V

    .line 374
    return-void
.end method
