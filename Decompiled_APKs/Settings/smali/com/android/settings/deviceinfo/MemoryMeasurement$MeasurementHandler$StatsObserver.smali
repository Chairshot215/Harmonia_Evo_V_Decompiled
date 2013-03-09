.class Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "MemoryMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsSizeForThisStatsObserver:J

.field final synthetic this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/MemoryMeasurement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    #getter for: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->access$500(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 321
    :cond_0
    if-eqz p2, :cond_1

    .line 322
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    #setter for: Lcom/android/settings/deviceinfo/MemoryMeasurement;->mInternalAppsSize:J
    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->access$602(Lcom/android/settings/deviceinfo/MemoryMeasurement;J)J

    .line 333
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;

    #calls: Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;->access$700(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler;)V

    .line 335
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queuePackageMeasurementLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method
