.class Lcom/htc/lmw/AppManager$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeObserver"
.end annotation


# instance fields
.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/htc/lmw/AppManager;


# direct methods
.method private constructor <init>(Lcom/htc/lmw/AppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/lmw/AppManager$SizeObserver;->this$0:Lcom/htc/lmw/AppManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lmw/AppManager;Lcom/htc/lmw/AppManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/htc/lmw/AppManager$SizeObserver;-><init>(Lcom/htc/lmw/AppManager;)V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/AppManager$SizeObserver;->succeeded:Z

    .line 400
    iget-object v0, p0, Lcom/htc/lmw/AppManager$SizeObserver;->this$0:Lcom/htc/lmw/AppManager;

    #getter for: Lcom/htc/lmw/AppManager;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/htc/lmw/AppManager;->access$100(Lcom/htc/lmw/AppManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 401
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 405
    iput-boolean p2, p0, Lcom/htc/lmw/AppManager$SizeObserver;->succeeded:Z

    .line 406
    iput-object p1, p0, Lcom/htc/lmw/AppManager$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 407
    monitor-enter p0

    .line 409
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 410
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
