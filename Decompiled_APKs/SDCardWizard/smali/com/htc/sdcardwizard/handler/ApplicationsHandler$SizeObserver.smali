.class Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/ApplicationsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeObserver"
.end annotation


# instance fields
.field stats:Landroid/content/pm/PackageStats;

.field final synthetic this$0:Lcom/htc/sdcardwizard/handler/ApplicationsHandler;


# direct methods
.method private constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->this$0:Lcom/htc/sdcardwizard/handler/ApplicationsHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->this$0:Lcom/htc/sdcardwizard/handler/ApplicationsHandler;

    #getter for: Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->access$300(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 150
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "packageStats"
    .parameter "succeeded"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
