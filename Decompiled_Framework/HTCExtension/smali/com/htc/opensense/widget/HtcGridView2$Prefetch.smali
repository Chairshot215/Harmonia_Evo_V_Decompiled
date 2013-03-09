.class Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Prefetch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfoComparator;,
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;,
        Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2.Prefetch"

.field private static final MSG_FETCH_ITEM:I


# instance fields
.field private mCurrentPos:I

.field private mFetchInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSorted:Z

.field private mMaxPosRange:I

.field private mMinPosRange:I

.field private mNumRow:I

.field private mPageElementsSize:I

.field private mPause:Z

.field private mWoringthread:Ljava/lang/Thread;

.field private mWorkingHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    const-string v1, "Fetch Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    return v0
.end method

.method static synthetic access$4700(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    return v0
.end method

.method private prefetchItem(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prefetchItem([Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V
    .locals 6

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v5

    move-object v0, p1

    :try_start_0
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    iget-boolean v4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    :cond_2
    monitor-exit v5

    :cond_3
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public DeInit()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->stopPrefetch()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWoringthread:Ljava/lang/Thread;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearPrefetchQueue()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mFetchInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fetchNextItem()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public pausePrefetch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    return-void
.end method

.method public prefetchItem(IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V
    .locals 6

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    return-void
.end method

.method public prefetchItem(Ljava/util/List;IILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    add-int/lit8 v7, v6, 0x1

    new-instance v0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;IIILcom/htc/opensense/widget/HtcGridView2$Prefetch$DataReadyListener;)V

    aput-object v0, v9, v6

    move v6, v7

    goto :goto_0

    :cond_0
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->prefetchItem([Lcom/htc/opensense/widget/HtcGridView2$Prefetch$FetchInfo;)V

    :cond_1
    return-void
.end method

.method public resumePrefetch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPause:Z

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    return-void
.end method

.method public startPrefetch()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->resumePrefetch()V

    return-void
.end method

.method public stopPrefetch()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->pausePrefetch()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->clearPrefetchQueue()V

    return-void
.end method

.method public updatePrefetchRange(IIIII)V
    .locals 1

    iput p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMinPosRange:I

    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mMaxPosRange:I

    iput p4, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mPageElementsSize:I

    iput p3, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mCurrentPos:I

    iput p5, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mNumRow:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mHasSorted:Z

    return-void
.end method
