.class Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
.super Ljava/lang/Thread;
.source "CleanCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/steps/CleanCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsLoaderThread"
.end annotation


# instance fields
.field owner:Lcom/htc/lmw/steps/CleanCache;

.field final rarelyUsed:Z

.field final synthetic this$0:Lcom/htc/lmw/steps/CleanCache;


# direct methods
.method public constructor <init>(Lcom/htc/lmw/steps/CleanCache;ZLcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter
    .parameter "isChecked"
    .parameter "owner"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 325
    iput-boolean p2, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->rarelyUsed:Z

    .line 326
    iput-object p3, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    .line 327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v0

    .line 334
    .local v0, am:Lcom/htc/lmw/AppManager;
    iget-boolean v2, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->rarelyUsed:Z

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    #getter for: Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/lmw/steps/CleanCache;->access$400(Lcom/htc/lmw/steps/CleanCache;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/lmw/AppManager;->getRarelyUsedInternalApplicationsWithCache(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    :goto_0
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    #calls: Lcom/htc/lmw/steps/CleanCache;->onAppsLoaded(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/htc/lmw/steps/CleanCache;->access$600(Lcom/htc/lmw/steps/CleanCache;Ljava/util/List;)V

    .line 340
    return-void

    .line 337
    .end local v1           #apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->owner:Lcom/htc/lmw/steps/CleanCache;

    #getter for: Lcom/htc/lmw/WizardActivity;->packageWhiteList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/lmw/steps/CleanCache;->access$500(Lcom/htc/lmw/steps/CleanCache;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/htc/lmw/AppManager;->getInternalApplicationsWithCache(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .restart local v1       #apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/AppInfo;>;"
    goto :goto_0
.end method
