.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "started"

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 187
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    .line 193
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    .line 465
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 466
    iput-boolean p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 467
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 3
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 484
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 486
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object v0

    .end local v0           #info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 475
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 476
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 477
    .local v1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 478
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 644
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 645
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_0
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result v0

    .line 650
    .local v0, idx:I
    if-ltz v0, :cond_2

    .line 651
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 652
    .local v1, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 653
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 655
    .end local v1           #info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result v0

    .line 656
    if-ltz v0, :cond_3

    .line 657
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 658
    .restart local v1       #info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 659
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 661
    .end local v1           #info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    return-void
.end method

.method doDestroy()V
    .locals 4

    .prologue
    .line 756
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_1

    .line 757
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Active in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 759
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 758
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    .end local v0           #i:I
    :cond_1
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Inactive in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 765
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 764
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 767
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->clear()V

    .line 768
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .prologue
    .line 744
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 745
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .prologue
    .line 750
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 751
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 750
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 5

    .prologue
    .line 717
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_2

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 721
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doRetain when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 725
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 726
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 727
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 728
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 727
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStart()V
    .locals 5

    .prologue
    .line 684
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_2

    .line 686
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 688
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStart when already started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 692
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 696
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 697
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 696
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStop()V
    .locals 5

    .prologue
    .line 702
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 706
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStop when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 711
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 710
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 713
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 783
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 784
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, innerPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 787
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 788
    .local v2, li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 789
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 794
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .restart local v1       #innerPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 797
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 798
    .restart local v2       #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 799
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 803
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 4

    .prologue
    .line 733
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 734
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished Retaining in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 737
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/app/HCSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 738
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 737
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 741
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public getLoader(I)Landroid/support/v4/content/Loader;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 669
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 674
    .local v0, loaderInfo:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_2

    .line 675
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 680
    :goto_0
    return-object v1

    .line 678
    :cond_1
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 680
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 535
    .local v0, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    if-nez v0, :cond_4

    .line 539
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 540
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 551
    :cond_3
    iget-object v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    return-object v1

    .line 542
    :cond_4
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    iput-object p3, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    goto :goto_0
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 495
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 501
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/support/v4/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p3, callback:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;"
    const/4 v5, 0x0

    .line 579
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 580
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 584
    .local v1, info:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    if-eqz v1, :cond_3

    .line 586
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 587
    .local v0, inactive:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_a

    .line 588
    iget-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_4

    .line 593
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 595
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 596
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->abandon()V

    .line 597
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 632
    .end local v0           #inactive:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    .line 633
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    :goto_1
    return-object v2

    .line 601
    .restart local v0       #inactive:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_4
    iget-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v2, :cond_6

    .line 605
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "LoaderManager"

    const-string v3, "  Current loader is stopped; replacing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1, v5}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 607
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 612
    :cond_6
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_8

    .line 613
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_7
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 615
    iput-object v5, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 617
    :cond_8
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "LoaderManager"

    const-string v3, "  Enqueuing as new pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 620
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    goto :goto_1

    .line 626
    :cond_a
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Making last loader inactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_b
    iget-object v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->abandon()V

    .line 628
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 773
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 777
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 471
    return-void
.end method
